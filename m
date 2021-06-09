Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 508753A1DB8
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 21:32:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbhFITea (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 15:34:30 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:35466 "EHLO
        mail-ot1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229504AbhFITe3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 15:34:29 -0400
Received: by mail-ot1-f48.google.com with SMTP id 69-20020a9d0a4b0000b02902ed42f141e1so25109752otg.2
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 12:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to;
        bh=/5hRR3JhxA61/7kGbJ52XF4Id3fG9uBeIzCvCACHPQw=;
        b=MMFEzs5U6IDNKqGfwXrix6STIsbRevLZaidgF9ycrqSfLwnZd2nH5WPjEDTby0ZOMT
         8mSMBVUXuPyJIo4vUqhf5ZC9cfz4dg6jelk7kAgdMPS1kHmslrmOtoqpiLM/7/f0b9tk
         3nPQf+T5651vsSqqm8Tz1nlX7vFJ6ukPeraZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to;
        bh=/5hRR3JhxA61/7kGbJ52XF4Id3fG9uBeIzCvCACHPQw=;
        b=WKBOYzp5nnxlUTG6EDv5MjHERDWE5t37UUbmSQJqF/DWSXbqoxaUSqU28fTZmCaC1M
         YBeFuIvp7nPf5CnszxdgmrLAQ4bsIFCMHM1AmIGpnmOEP4C3WDuHNqibzGN0TNx4VZeV
         /zy3/0QZml2sqfFz4vEba0bDYIcVP2kR1mfRU7GjTgPRbqbQoGF1jz0msKpxFEHeji9Q
         wBPAyVsEb7T67w2UM/RoJLnDIAqk+jIycKjLX7vIqJgY1ceReCaCiakuhLmfENucFv8t
         Orr/Ej3zskoaRQ/V05Q//KVqFsoYkd2xP0nyU6BF0702FFnE0lzkKVKqRlunwY778/WC
         INBA==
X-Gm-Message-State: AOAM533X6umCQdza9R2nSRSRtw+IyDX6sN1Ll1K9HTvwupMRu6WMKYJ4
        2mpejbPLOm4rfwFL7ue6bZKw3lnUP6C7PX5s4551EQ==
X-Google-Smtp-Source: ABdhPJwbGOmwALrdCY6bSX1H2qs6NY1fPr3SD/WDtOxCLEy4O9BT2CZIneFt6DfO7TE5QTj4TK4ORmu+XZn+RYoNM64=
X-Received: by 2002:a05:6830:190:: with SMTP id q16mr865886ota.34.1623267094752;
 Wed, 09 Jun 2021 12:31:34 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 9 Jun 2021 12:31:33 -0700
MIME-Version: 1.0
In-Reply-To: <20210609133039.4648-1-srivasam@codeaurora.org>
References: <20210609133039.4648-1-srivasam@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 9 Jun 2021 12:31:33 -0700
Message-ID: <CAE-0n53Jy_kRK-6L4bZMZ2EAv2n3b9PX2GZSaUodZtU8P7P=6Q@mail.gmail.com>
Subject: Re: [PATCH v3] ASoC: qcom: Add four speaker support on MI2S secondary
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        agross@kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, bjorn.andersson@linaro.org,
        broonie@kernel.org, devicetree@vger.kernel.org,
        judyhsiao@chromium.org, lgirdwood@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        perex@perex.cz, plai@codeaurora.org, robh+dt@kernel.org,
        rohitkr@codeaurora.org, srinivas.kandagatla@linaro.org,
        tiwai@suse.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2021-06-09 06:30:39)
> diff --git a/sound/soc/qcom/lpass-cpu.c b/sound/soc/qcom/lpass-cpu.c
> index c62d2612e8f5..aff39c9f6326 100644
> --- a/sound/soc/qcom/lpass-cpu.c
> +++ b/sound/soc/qcom/lpass-cpu.c
> @@ -29,6 +29,15 @@
>  #define LPASS_CPU_I2S_SD0_1_2_MASK     GENMASK(2, 0)
>  #define LPASS_CPU_I2S_SD0_1_2_3_MASK   GENMASK(3, 0)
>
> +/*
> + * Channel maps for Quad channel playbacks on MI2S Secondary
> + */
> +static struct snd_pcm_chmap_elem lpass_quad_chmaps[] = {

Can this be const?

> +               { .channels = 4,
> +                 .map = { SNDRV_CHMAP_FL, SNDRV_CHMAP_RL,
> +                               SNDRV_CHMAP_FR, SNDRV_CHMAP_RR } },
> +               { }
> +};
>  static int lpass_cpu_init_i2sctl_bitfields(struct device *dev,
>                         struct lpaif_i2sctl *i2sctl, struct regmap *map)
>  {
