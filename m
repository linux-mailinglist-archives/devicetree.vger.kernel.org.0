Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2E5F698BC2
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 08:55:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728870AbfHVGzd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 02:55:33 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:38107 "EHLO
        mail-ot1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729829AbfHVGzd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 02:55:33 -0400
Received: by mail-ot1-f43.google.com with SMTP id r20so4501482ota.5
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 23:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=wGjwZaiHKgNAjthbyA6/Ig/piBsbiLnPz4lWq180/QQ=;
        b=UxLNyw2mvZO6h2o2qOJ+/NNQHsFwSSMywdsoqCzar+74gxc+J3zM0TjZkAI5mi5FPa
         MLhPdxOIjEej6Mx1Nx5K4hGIP+asFxvT7acNrKVN1h0F4ubmswe4bWf7282DBPBMBwLv
         URCjCuBz/Wkr7Qaa1Sow8RCzkYzf6K7TiuPzWpj4EYirmfDzgJAKQZ6L8YPtkL9ZwI55
         MneM8loMvWSkY0+1YqNz5eyWN+CI4g4ortxszhAWtTbBjZMuEIh+uh0L/pBZ8Ajncrn7
         vVvyhyOzAMrAkQ+CzHf/CMkp4AimPNZnJCBuPVxAicVDiNikG9D/d4ZeqhfS3JjOwQry
         osrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=wGjwZaiHKgNAjthbyA6/Ig/piBsbiLnPz4lWq180/QQ=;
        b=GEZh2J4CsEWl6byvBEn+cy8kkXtV+vtPQoDzhAJmjANWzLVvKWjaPe10/xTBVkJB7k
         QqfnTeUuFx28PLGbbbitEMUpsuBCbgE869gfAUAG+WSf5DuahJsZWp7orLmM+J/sCCbT
         rmWGFJprIuz+4F3RIB5a/f3QK/WJ4CYxXCjfs6WbxvqsnxqwZDYszavOo4TukikKw1J6
         xWp8QFfALQ9G3P/li0EIqtrIhfIzZiY9F9mqJDxVtX1f7rJeEdnNBt88jcbneQAfeWHL
         2vxoRFa1kmBFhv6cZ/SnEQ/V8VIeIRDZeD84Hxo4dN+kn2iw/MyWkOP9mH4xOQz68zHK
         afTw==
X-Gm-Message-State: APjAAAW7YJNXkbvg2GaN4Uk3tYyGMrQpJ0m1udEetQQ3szvDRQseCmX1
        n/5WQ1lDPOkKGYFPdTCRRdJDPuzN7OFO28TrLM7LBA==
X-Google-Smtp-Source: APXvYqwOfj0jfXAc9u28DfT5cfMsPDAbxO450ATlTMxpOWsRxa3/1BcJ/42ZslHDDQeVxQjYkxVtI6HkNNhJCPs+wP8=
X-Received: by 2002:a9d:6b1a:: with SMTP id g26mr11704743otp.195.1566456932065;
 Wed, 21 Aug 2019 23:55:32 -0700 (PDT)
MIME-Version: 1.0
From:   Saravana Kannan <saravanak@google.com>
Date:   Wed, 21 Aug 2019 23:54:55 -0700
Message-ID: <CAGETcx_pSnC_2D7ufLRyfE3b8uRc814XEf8zu+SpNtT7_Z8NLg@mail.gmail.com>
Subject: Adding depends-on DT binding to break cyclic dependencies
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Android Kernel Team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Frank, Greg and I got together during ELC and had an extensive and
very productive discussion about my "postboot supplier state cleanup"
patch series [1]. The three of us are on the same page now -- the
series as it stands is the direction we want to go in, with some minor
refactoring, documentation and naming changes.

However, one of the things Frank is concerned about (and Greg and I
agree) in the current patch series is that the "cyclic dependency
breaking" logic has been pushed off to individual drivers using the
edit_links() callback.

The concern being, there are going to be multiple device specific ad
hoc implementations to break a cyclic dependency. Also, if a device
can be part of a cyclic dependency, the driver for that device has to
check for specific system/products in which the device is part of a
cyclic dependency (because it might not always be part of a cycle),
and then potentially have cycle/product specific code to break the
cycle (since the cycle can be different on each system/product).

One way to avoid all of the device/driver specific code and simplify
my patch series by a non-trivial amount would be by adding a
"depends-on" DT binding that can ONLY be used to break cycles. We can
document it as such and reject any attempts to use it for other
purposes. When a depends-on property is present in a device node, that
specific device's supplier list will be parsed ONLY from the
depends-on property and the other properties won't be parsed for
deriving dependency information for that device.

Frank, Greg and I like this usage model for a new depends-on DT
binding. Is this something you'd be willing to accept?

Thanks,
Saravana

[1] - https://lore.kernel.org/lkml/20190731221721.187713-1-saravanak@google.com/
