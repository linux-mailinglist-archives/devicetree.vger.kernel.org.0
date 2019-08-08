Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 92DD286AC6
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 21:50:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732327AbfHHTuv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 15:50:51 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:35564 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730678AbfHHTuv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 15:50:51 -0400
Received: by mail-ot1-f67.google.com with SMTP id j19so46812722otq.2
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 12:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=emp4LKrOwlvn9H3QmUc01UuAWl5tSDoRJbMuuvNlrME=;
        b=t/7RSpYR2HGgbRiGdk0CajkHX9bGeXcBLovq8VvOSE6x2wgw73SYyiwvEKrgbTG7z5
         yBSDk5KRn+FWG5gWjSL+sV1xWHF01X/SII/V8sVog7DexMmFSYavR5WB76ud8vP+U4sq
         RHTTMXYKn0eW2/Lm/T73ZDd+XEN/1aUdFri497UIsjuM73EAtAATTFRqS05IVSTfjdi/
         FBdjAeI/ZwrZPRZD+t6XTbOtu7T9uQBGeZPAHhkBg8vp6PcBrzY3UypzqNGTD0OC4iHh
         q4mCA2vZ9f06FgWkCStM3wzI/1kb2bobpfhVus0MZM+eyngDpYVvaHgv+VTuZOZ0J9j3
         HB0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=emp4LKrOwlvn9H3QmUc01UuAWl5tSDoRJbMuuvNlrME=;
        b=cwSqsf4f7kffH4W1mANssil/EZcucWBKnNnNSATwg0WUry6kVIZytnaavra+qc9Y2D
         MCWjsP4r24GQe2dfQb0d/JuAsJxFmIYd9Q7vN1S/md0eWz9DNuREk4TJggOjS/VPLoqq
         1UyG2AhB3ooaCWs7tyemjksH9uiove8lfpkh56gl6KGvDgYYk5AI0/E9CgvSrEczZKtd
         jtrwVkDDGQPSCntwvJn+kmtlNbkGWtudODe/Z8JOVdSpQEPSr++GEqHnQL7FGG0TjGYO
         3usRFTWsS+mLuVhnONONoxFNnaAZfGN5j+d9E+r6K6A6ULAg8jswJFkdQLaFZBpvpIEl
         J42g==
X-Gm-Message-State: APjAAAV0N95XzaEpnvRTN+TpUldBODbhOjVwgf+69iQ9SLYwsz0vSu+F
        atOU9PtI6e4xojXI1LUrmHhvpysS6nUJPyNATAQ=
X-Google-Smtp-Source: APXvYqwtQSZ14JChR+aroTklLVqzb1JzZPf4gpdcL4naxp+vaCBOQQTVtOAg7FG9u126l+w1dFP3b3tumbn2rLG+u7c=
X-Received: by 2002:aca:4ad2:: with SMTP id x201mr3968281oia.129.1565293850466;
 Thu, 08 Aug 2019 12:50:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190808085139.21438-1-narmstrong@baylibre.com> <20190808085139.21438-8-narmstrong@baylibre.com>
In-Reply-To: <20190808085139.21438-8-narmstrong@baylibre.com>
From:   Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date:   Thu, 8 Aug 2019 21:50:39 +0200
Message-ID: <CAFBinCBnVdTxWgqmnrPo-5uZ5gxy7p68w0PUa=_42fYxhVrDXQ@mail.gmail.com>
Subject: Re: [PATCH 7/9] dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert
 to yaml
To:     Neil Armstrong <narmstrong@baylibre.com>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>, kishon@ti.com,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 8, 2019 at 10:54 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Amlogic G12A USB3 + PCIE Combo PHY over to a YAML schemas.
>
> While the original phy bindings specifies phy-supply as required,
> the examples and implementations makes it optional, thus phy-supply
> is not present in the properties and required lists.
nit-pick: the original bindings didn't mention the phy-supply property at all
I'm not sure if you have to re-send it, maybe this can be fixed up
while applying?

> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
