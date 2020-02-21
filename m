Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7521F167AF0
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2020 11:41:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727027AbgBUKlO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Feb 2020 05:41:14 -0500
Received: from mail-wr1-f65.google.com ([209.85.221.65]:43066 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726934AbgBUKlO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Feb 2020 05:41:14 -0500
Received: by mail-wr1-f65.google.com with SMTP id r11so1433552wrq.10
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2020 02:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=references:user-agent:from:to:cc:subject:in-reply-to:date
         :message-id:mime-version;
        bh=nC38uQjZDz3wMRzUDRjp52c9Hy5uCnGBGkiYQn+GewE=;
        b=jFRFDwIWQUOtcfddu0setQkrtBAAsg+QM4SFFjMIfs1t2qtIm0uY7i8crq9De6BNzc
         Dtmli57wfgiv+8hXV/TFGnq9teiaSzgi8MwR1QQlhBXnc+XRDK0+UQ4NT5WD1X+CDrV+
         sJBDa7KYxgxHPFHz4VxYS/x5pJK+EguZ4u447bTGH5MPg5CdBX3mmARRiypZ7ZyZPr2e
         FKJTapXALLySo1mmmxFw0kI+65Y+YiqMiLgxJ67v6SZEA35vfk0WbL1/9p0xWJ6+W3pn
         BizqQ5sktYD0I+kUvccg9I9+ICSSgWYFz/5SmlbSxoi1InaZoRSpRNS//odmTCwExi2r
         spEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject
         :in-reply-to:date:message-id:mime-version;
        bh=nC38uQjZDz3wMRzUDRjp52c9Hy5uCnGBGkiYQn+GewE=;
        b=UV71UyuG0JuTNf+5r1S9FWW+kqKkJdeOhoe/8urCTFzlYJwGGeVRQ/A43ksQdokvG1
         SV2ncZRSbyRELE1HV15PCdSOO2/+eYyNFPHo2aHYEP3g9u4iua9BlZ2o2S0ILJFVulPN
         5GZIw+TATFM6rjITNBZu9geSEuONS4ktN4sDp0qw6yGsLK0208ZZ4FIeJUegxa3NFsIt
         yQ7WD7MgWv9jMN6AekRb3s7oAjU0OCXx4LEOemWAXz9NQy6hA+p4qg9QCL8QbhxTsr1e
         srwUBYy4IOWzXq50Jazu0Qk9iHp/A1f50/MG3Miwjd5Na7h89HVlyq2ez2uQy1bUTTIe
         mWIQ==
X-Gm-Message-State: APjAAAUNosYyVTYSt9kbLxSvTy5kKea7GEeKJDaEAeXMVtea2fqbtDA5
        nOhMCYfiEwjmyBR7gXj/PRtmDA==
X-Google-Smtp-Source: APXvYqy2Z7KXJqoiyg14kzMzg6EQiEnMDyNve9Bd9jHVjubhjmti6d9+RBVLDiLaHEsRbCPSAAbbmw==
X-Received: by 2002:adf:a453:: with SMTP id e19mr45872540wra.48.1582281671269;
        Fri, 21 Feb 2020 02:41:11 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id q9sm3437231wrx.18.2020.02.21.02.41.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2020 02:41:10 -0800 (PST)
References: <20200220205711.77953-1-martin.blumenstingl@googlemail.com> <20200220205711.77953-2-martin.blumenstingl@googlemail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        broonie@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Cc:     lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] ASoC: meson: aiu: Document Meson8 and Meson8b support in the dt-bindings
In-reply-to: <20200220205711.77953-2-martin.blumenstingl@googlemail.com>
Date:   Fri, 21 Feb 2020 11:41:09 +0100
Message-ID: <1jtv3k2pfe.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Thu 20 Feb 2020 at 21:57, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> The AIU audio output controller on the Meson8 and Meson8b SoC families
> is compatible with the one found in the GXBB family. Document the
> compatible string for these two older SoCs.
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>

> ---
>  Documentation/devicetree/bindings/sound/amlogic,aiu.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/sound/amlogic,aiu.yaml b/Documentation/devicetree/bindings/sound/amlogic,aiu.yaml
> index 3ef7632dcb59..a61bccf915d8 100644
> --- a/Documentation/devicetree/bindings/sound/amlogic,aiu.yaml
> +++ b/Documentation/devicetree/bindings/sound/amlogic,aiu.yaml
> @@ -21,6 +21,8 @@ properties:
>        - enum:
>          - amlogic,aiu-gxbb
>          - amlogic,aiu-gxl
> +        - amlogic,aiu-meson8
> +        - amlogic,aiu-meson8b
>        - const:
>            amlogic,aiu

