Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF0852B9AA7
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 19:34:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729192AbgKSS3T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 13:29:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728963AbgKSS3T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 13:29:19 -0500
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com [IPv6:2607:f8b0:4864:20::d43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13876C0613CF
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 10:29:19 -0800 (PST)
Received: by mail-io1-xd43.google.com with SMTP id r1so7127732iob.13
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 10:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7zV9Kkv3wwuvNbc0azzKTX32YZSa571gAVihgqPUd5o=;
        b=lWjn2irtz1lderPEWZiAmdFZ0dHOjwFHwr+YbgdY0JsA0NjAFiY47AlvAMuyDhFXit
         NByQMx5ZKk5W+0DTH9ag1X+QuDkWQOYPDPlxeiwdRlsy5inppXt7iq1LuEgDD1+OCLO4
         oXRNCx/tjZIyJgGQuiHd6ucS47oCdafEjVAjO6jDtPCQrdGQwVfaFSE6GyCckpc+sE72
         GdAz/82Xn7+r2Aq9ZnuQYB4W6FzNwJZGXc9iDorRUMv6OMu8Z5WCVuAW/V1AunwSzEXH
         821MEME42XViI8kNFjKkVlw+oxmXtZjAm7Bu9RAlitqCwl64Iq2LfwlFMBhe5CJ5r0Tb
         qHyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7zV9Kkv3wwuvNbc0azzKTX32YZSa571gAVihgqPUd5o=;
        b=SSp9MQTQR4nt/UH02/ByAW73WXbIQ6glkJJawpOSbHGh9ecUYwTVuTwVt/aoXtLEp0
         UDGjNYXvrZAl+Khf15SPuKM5emlSuQMQtUmZr0RIu9gth9kNcioH7wBByrS75Tqin5nw
         YvdTx0OP3zejsx6tTXc8VlCeZfgNesFohMSFUjAm4R2ArDTX0PrwILUfNAQEq+FDqIdc
         LIaj5hRIAt2lYMj4SkIg4iWrMJVGni8r+r2CoR9wgRAJRl8Pujsufb8j02wDaIdbw3sW
         Fcq8W09UWfL99Rw/yv6Z2UdSXmkoklgANhcE4QRmHqtTjEciYTZXYIWW9SpSXSS11RT1
         6Q4g==
X-Gm-Message-State: AOAM532WacUz+Eawnu/42oGfzZwGlgySqCpID/vpReQbrZrpPuiF2tIF
        yTgQf4S+uyFcVqXSPcs8pRr4erc2lw0nmSXTz1VTMA==
X-Google-Smtp-Source: ABdhPJykTOi+cvs+PtYtasUxLBPGRNM25GvTswHcJc4/xSPpCMKkzMcQSi4qrIyumhoA9Xxsn/N21ZwxnaPdxBhyh/c=
X-Received: by 2002:a02:7086:: with SMTP id f128mr14658981jac.108.1605810558134;
 Thu, 19 Nov 2020 10:29:18 -0800 (PST)
MIME-Version: 1.0
References: <20201119073230.123888-1-joel@jms.id.au>
In-Reply-To: <20201119073230.123888-1-joel@jms.id.au>
From:   Benjamin Fair <benjaminfair@google.com>
Date:   Thu, 19 Nov 2020 10:28:40 -0800
Message-ID: <CADKL2t5FWfg+j997WFD5TO6vG9nrpH3FpLoW1XvPbtrP_ttR8g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: Add FII
To:     Joel Stanley <joel@jms.id.au>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mustatfa Shehabi <Mustafa.Shehabi@fii-na.com>,
        Mohaimen alsmarai <Mohaimen.alsamarai@fii-na.com>,
        Lancelot Kao <lancelot.kao@fii-usa.com>,
        Vivekanand Veeracholan <vveerach@google.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 18 Nov 2020 at 23:32, Joel Stanley <joel@jms.id.au> wrote:
>
> Adds Foxconn Industrial Internet, who have submitted a BMC device tree.
>
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Benjamin Fair <benjaminfair@google.com>

> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 2735be1a8470..a64e03e39e9c 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -377,6 +377,8 @@ patternProperties:
>      description: Shenzhen Feixin Photoelectic Co., Ltd
>    "^feiyang,.*":
>      description: Shenzhen Fly Young Technology Co.,LTD.
> +  "^fii,.*":
> +    description: Foxconn Industrial Internet
>    "^firefly,.*"
>      description: Firefly
>    "^focaltech,.*":
> --
> 2.29.2
>
