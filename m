Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 966E228350D
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 13:36:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725931AbgJELgM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 07:36:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725891AbgJELgL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 07:36:11 -0400
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53F5EC0613CE
        for <devicetree@vger.kernel.org>; Mon,  5 Oct 2020 04:36:11 -0700 (PDT)
Received: by mail-lf1-x144.google.com with SMTP id h6so3647904lfj.3
        for <devicetree@vger.kernel.org>; Mon, 05 Oct 2020 04:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QWUIVzlGRQWxPn+b1ACG3xDtfN3nM73oyQh+/xMJ6f8=;
        b=HCH8LrFO3R/ztzRAV9PAcOw5O5Vviirbs4HQWlEH3Au+DkBr8ueD2ielhoO0i2RPW6
         LpwvVuBnoGPtz5g0qd7o8XIxmWQ8RbyJ0cOZBfbOQA0FzO2KDmQbU2mrEgIYWtCnwGD0
         6XZD+5KZUUSH0X6FqjriZgNW3bvomR8OEn0O+uh0Tt0p4zZH21xRslACPUWQNilr0Bt4
         D2VvYdj4QGgntFwHqzj/4BGvb3hgoP65w3ukSwqNGM9WMkhWo41wc/J8wlfJWBqVzfKb
         lQQwlvNLSSWM+DKbVsF3V3LByeL3WnitEER1JXpZJkA3E12NTEYAViZEfi0RV9+4lDz/
         9OAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QWUIVzlGRQWxPn+b1ACG3xDtfN3nM73oyQh+/xMJ6f8=;
        b=P/CfAZQeO2yx7pB+E1JTYEwnkKy/gV2XEuqRjcgWoNwUkRuhspXOKkkT5lhByDuOuH
         mBVzF0lrYIjDAm2iUZLwjagbCzOhrS7ooSCoDBGTUFGst008581E3AnlFjo6Qhel3R48
         EOb1SnNKzmGnRi96KpJMmB7phmh2YcX4J8S/BOBlfBN+H6isJxjp4C4dD76s3L9SKWx9
         4moKHD23A0bOb+8nUIVOx8Ssgk3PfLuP9v60dUf8Dmu5MoLVfDgjEsryTO056OynqtHG
         2SIho46w1luioIUnuO7QlESRPBH7BQtb4mpvspb9JyUuUjOJ4cDjleKMT/izFA+r8NtJ
         a84w==
X-Gm-Message-State: AOAM531qe2A3xIuTAV/1Sr7KRIUSUc56hjz6c6O7f6wP+kNsHNmrrFlx
        EJOAYJMdf5mhsKmph6+K8mhXIxjejpFyxrjJv6Q=
X-Google-Smtp-Source: ABdhPJyA4krJkKCasXMqip0QWH2CvXGO/9mR8gz3YpX36JyMZN9y+jEEA/PFRc94fP72ATphhoapuYVv/CkJaqwwZE4=
X-Received: by 2002:a19:c355:: with SMTP id t82mr5932460lff.251.1601897769758;
 Mon, 05 Oct 2020 04:36:09 -0700 (PDT)
MIME-Version: 1.0
References: <20201005111644.3131604-1-primoz.fiser@norik.com> <20201005111644.3131604-2-primoz.fiser@norik.com>
In-Reply-To: <20201005111644.3131604-2-primoz.fiser@norik.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Mon, 5 Oct 2020 08:35:58 -0300
Message-ID: <CAOMZO5CQkh06TfKj3qR9P+0ZQOQo07NAg8v9j==KMrLCWBn0mg@mail.gmail.com>
Subject: Re: [PATCH 2/2] ASoC: dt-bindings: fsl: add ac97 fixed mode support
To:     Primoz Fiser <primoz.fiser@norik.com>
Cc:     Linux-ALSA <alsa-devel@alsa-project.org>,
        Timur Tabi <timur@kernel.org>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Xiubo Li <Xiubo.Lee@gmail.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 5, 2020 at 8:16 AM Primoz Fiser <primoz.fiser@norik.com> wrote:
>
> Add devicetree bindings documentation for operating SSI in AC'97
> variable/fixed mode of operation.
>
> Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
> ---
>  Documentation/devicetree/bindings/sound/fsl,ssi.txt | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/sound/fsl,ssi.txt b/Documentation/devicetree/bindings/sound/fsl,ssi.txt
> index 7e15a85cecd2..abc5abe11fb9 100644
> --- a/Documentation/devicetree/bindings/sound/fsl,ssi.txt
> +++ b/Documentation/devicetree/bindings/sound/fsl,ssi.txt
> @@ -43,6 +43,11 @@ Optional properties:
>  - fsl,mode:         The operating mode for the AC97 interface only.
>                      "ac97-slave" - AC97 mode, SSI is clock slave
>                      "ac97-master" - AC97 mode, SSI is clock master
> +- fsl,ac97-mode:    SSI AC97 mode of operation.
> +                    "variable" - AC97 Variable Mode, SLOTREQ bits determine
> +                    next receive/transmit frame
> +                    "fixed" - AC97 Fixed Mode, SSI transmits in accordance with
> +                    AC97 Frame Rate Divider bits

It would be good to mention what is the default mode when such
property is absent.
