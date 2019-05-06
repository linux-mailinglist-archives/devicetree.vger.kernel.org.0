Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C2F29147DD
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2019 11:52:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726449AbfEFJwP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 May 2019 05:52:15 -0400
Received: from mail-ua1-f66.google.com ([209.85.222.66]:40041 "EHLO
        mail-ua1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725861AbfEFJwO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 May 2019 05:52:14 -0400
Received: by mail-ua1-f66.google.com with SMTP id s11so715170uae.7
        for <devicetree@vger.kernel.org>; Mon, 06 May 2019 02:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sK1AW46uFm51k7mgTa8btpLaGMbzfNDj8ewiwbIYzZk=;
        b=HeRnYqWwxPUpFC+wvfGu3tZiVy2frYO9St/sbs+uJklMjxVucVdmn6QY7a2+duAoK/
         CqMSO5pHO/0IBK3D6Tpy6f0G/HE1XfBgnM34QQ0mL/CnT3ZIDWkGKeuHqmeTpEnI1fUj
         L0UIqDi/D+qQKexFaE5pI/zS76L4gE3ICEmmi6oh0dGwmUiZ7YoG7SbDNHc3hTdqhSB+
         5jZNYuELm8guM30bxvc0vNWiXNkStWGJG+gZtS9e4UDYrXmeMv3vJ+faoezgMsvXua5V
         aywxibcehAlF3e56cgi2jV+BUUePYEXnNM8PS1BWfmacr8nBZ637YpdzLsM9pBN6SQ2i
         cvEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sK1AW46uFm51k7mgTa8btpLaGMbzfNDj8ewiwbIYzZk=;
        b=WFExZrA+F3x/LERh+6DdaGTM3utbdxOJUaHbvvBnH7oSq0a4ejUIAJJOrNIkAN12aI
         b/wCZc8lVYmUsY97wOg2aPvya1oJYvBbivBAorwCxvK2Y6FM/wr8yGSmvbSZWB9sSYss
         BX8AmIhzLfaxqk9UYuq28ucXTQte7zzCUgjBvFZiL2n3V9d4+aCZQAbmk0B0L9aWrxNE
         jYAVK3J1/I4MuIx8+8Jw0engRIP/P3L9yNFtYFq8+ucKlGTRj24cLNLBxQpZrG6sxtDu
         LvPaiXK9Dmq9ePfdA9S8XMHYmqRjppOw0YpD5Z71pCDoWHiijtsFoE3Ogx5PpdxePk8N
         uT5A==
X-Gm-Message-State: APjAAAWaLs7wqmdnmITLiBeZzrhatD2fEGNYHA3rIk15nfDgDGdlj/ni
        p/1/aEKETGSRhZpjj9g8D4cpmL2jTKaGbjz2psVkgg==
X-Google-Smtp-Source: APXvYqwRjSSrQqdAGdNhhsMUNgKYFkiN8aJTLBYaPDU00ethSrpubRCAgZGaRAPkoFFQeWvQTDbGYAQff6V2hFR7nzc=
X-Received: by 2002:ab0:2b13:: with SMTP id e19mr12246383uar.15.1557136333748;
 Mon, 06 May 2019 02:52:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190505055858.37509-1-yinbo.zhu@nxp.com>
In-Reply-To: <20190505055858.37509-1-yinbo.zhu@nxp.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 6 May 2019 11:51:37 +0200
Message-ID: <CAPDyKFrcFo_zCy5q2VkUP+SxOTogmAsys-X_yBrARLE1dTcqqw@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: add DT bindings for ls1028a eSDHC
 host controller
To:     Yinbo Zhu <yinbo.zhu@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Leo Li <leoyang.li@nxp.com>, Xiaobo Xie <xiaobo.xie@nxp.com>,
        "Y.b. Lu" <yangbo.lu@nxp.com>, Jiafei Pan <jiafei.pan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 5 May 2019 at 07:57, Yinbo Zhu <yinbo.zhu@nxp.com> wrote:
>
> From: Yinbo Zhu <yinbo.zhu@nxp.com>
>
> Add "fsl,ls1028a-esdhc" bindings for ls1028a eSDHC host controller
>
> Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Change in v2:
>                 as alphabetical order to update dt-bindings
>                 update the commit information.
>
>  Documentation/devicetree/bindings/mmc/fsl-esdhc.txt | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-esdhc.txt b/Documentation/devicetree/bindings/mmc/fsl-esdhc.txt
> index 99c5cf8507e8..edb8cadb9541 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl-esdhc.txt
> +++ b/Documentation/devicetree/bindings/mmc/fsl-esdhc.txt
> @@ -17,6 +17,7 @@ Required properties:
>         "fsl,t4240-esdhc"
>      Possible compatibles for ARM:
>         "fsl,ls1012a-esdhc"
> +       "fsl,ls1028a-esdhc"
>         "fsl,ls1088a-esdhc"
>         "fsl,ls1043a-esdhc"
>         "fsl,ls1046a-esdhc"
> --
> 2.17.1
>
