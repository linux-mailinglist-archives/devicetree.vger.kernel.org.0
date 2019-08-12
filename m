Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 723BC8A6A8
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 20:55:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726185AbfHLSzF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 14:55:05 -0400
Received: from mail.kernel.org ([198.145.29.99]:43064 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726090AbfHLSzF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 12 Aug 2019 14:55:05 -0400
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9E908206C1
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2019 18:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1565636104;
        bh=O808RGXqc21FfxyU94RJJst8fUfCJgU7f8MluksfgQM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=I0FsRZ76u46uoZitGnjemOLJ8AhpUAZc19JNKfEdN2CyiKDUx4AjihPDTGZVrDECf
         dsU+oq08uMLhilrH4An3WyLB8qxSFQu63eKKCOh/5fDh+3Q3e6N9j2HWd2gAxU3IQG
         yMCVMf1pcpWNN2LSNX9XXpKfDda7VyzNDvim2RQk=
Received: by mail-qt1-f174.google.com with SMTP id v38so11515346qtb.0
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2019 11:55:04 -0700 (PDT)
X-Gm-Message-State: APjAAAV8Pp5GXcPHxGK09q4UDsflUq9/Hip4Rk5YOq0zZPCFQiXQXF3L
        Z504GVhGQZHKqyeykSc+mFa2R2xG96HwLbEhDw==
X-Google-Smtp-Source: APXvYqyia1gKPVgjbtUTpnuZBlJgpqSY8tXfsBbv+8QzCcalURscIR5esdg67OirrsSo+tPUqidcyPBuwinY7WnMgWA=
X-Received: by 2002:ac8:7593:: with SMTP id s19mr23649307qtq.136.1565636103871;
 Mon, 12 Aug 2019 11:55:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190810231048.1921-1-laurent.pinchart@ideasonboard.com> <20190810231048.1921-3-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20190810231048.1921-3-laurent.pinchart@ideasonboard.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 12 Aug 2019 12:54:52 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLBYL7K8HvT-xXjHiQ9_U_iG41FcJA16Sk+ELuwMH40aQ@mail.gmail.com>
Message-ID: <CAL_JsqLBYL7K8HvT-xXjHiQ9_U_iG41FcJA16Sk+ELuwMH40aQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/9] dt-bindings: Add legacy 'toppoly' vendor prefix
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 10, 2019 at 5:10 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> The 'toppoly' vendor prefix is in use and refers to TPO, whose DT vendor
> prefix is already defined as 'tpo'. Add 'toppoly' as an alternative and
> document it as legacy.
>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> Changes since v1:
>
> - Mark the prefix as deprecated
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>
