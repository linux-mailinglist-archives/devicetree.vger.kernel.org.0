Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79F2F452832
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 04:04:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343666AbhKPDHi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 22:07:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245054AbhKPDHb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Nov 2021 22:07:31 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8C56C06121D
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 15:36:09 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id s139so38198975oie.13
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 15:36:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=dWC8K8ncLeoNS//sQPeLcxjUFBd9YRjPbYe+Yaf2cCA=;
        b=Ld8WMJc61fY24i8/fosv3XDha5eYvH4ZtJgZ7Ip/4po3hvifMffK6YpDS4U+K9shX/
         Ye1Fz9V/tCRC8KXDEZBzkYbX/7zV94nOhQtuitRH+0q5aAeldmVgMQDSRhUP/SpssTta
         pPO3Y/bbyq2a6HvAkVdyKc/apDvM2hOQHfGW0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=dWC8K8ncLeoNS//sQPeLcxjUFBd9YRjPbYe+Yaf2cCA=;
        b=RpKOnK5nqCKsn8UqmU18e0zscD7IqCCEIQvaLv8wFM19JpZyBDrITelF28T0d2m1qD
         REJ3uyncqSUWnmPurTLfQZ7DBt3Y2A+prXwh/99Dv4daT/Sn6IwEc7HZYTi8qJmDs3d7
         Y8Xs4NKI6NYHwlnsd1wf5rol37p/HEB60/9qsFnYUfkPH80UIPLq3NLZGXPUgSRS1T9J
         ytM8tobSJyRHuUOINIwmWnc0dSTFhwh2G5kiWWq0qDV88aBOYx5vSDpPMoGjZwXwDDyy
         D0O18qiBj2u+bZ3JKMc8kV8rXA1jHay90hYXpnJr2Ym66lcgXH51arroIdPgTQAE1r85
         icnA==
X-Gm-Message-State: AOAM5336BbW/YCCaS1FW96hyztvAd4Vggq2sxpJhS7A/OJY4hwKQMMLy
        YXnN47YogG38ZmwZanCU3agCDE4aH+pmi9vtlNo9aA==
X-Google-Smtp-Source: ABdhPJxtAo45rLZbDwdWOiRCk+PyKniWJlEnVa2OYhWCNTMvbYmZhhrueYbKLk8uaACFucgFyIQwJ7Fq+eYCbJsj4Hk=
X-Received: by 2002:aca:2319:: with SMTP id e25mr48820032oie.164.1637019369080;
 Mon, 15 Nov 2021 15:36:09 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 15 Nov 2021 15:36:08 -0800
MIME-Version: 1.0
In-Reply-To: <1636960288-27537-1-git-send-email-srivasam@codeaurora.org>
References: <1636960288-27537-1-git-send-email-srivasam@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 15 Nov 2021 15:36:08 -0800
Message-ID: <CAE-0n52n7nscLfqt8-7+UmXdEh2suDNC-ywPRUZL8FdPONbhZQ@mail.gmail.com>
Subject: Re: [PATCH v2] ASoC: codecs: MBHC: Add support for special headset
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        agross@kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, bjorn.andersson@linaro.org,
        broonie@kernel.org, devicetree@vger.kernel.org,
        judyhsiao@chromium.org, lgirdwood@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        perex@perex.cz, plai@codeaurora.org, robh+dt@kernel.org,
        rohitkr@codeaurora.org, srinivas.kandagatla@linaro.org,
        tiwai@suse.com
Cc:     Venkata Prasad Potturu <potturu@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2021-11-14 23:11:28)
> diff --git a/sound/soc/codecs/wcd-mbhc-v2.c b/sound/soc/codecs/wcd-mbhc-v2.c
> index 405128c..d6545e4 100644
> --- a/sound/soc/codecs/wcd-mbhc-v2.c
> +++ b/sound/soc/codecs/wcd-mbhc-v2.c
> @@ -1022,6 +1022,56 @@ static int wcd_mbhc_get_plug_from_adc(struct wcd_mbhc *mbhc, int adc_result)
>         return plug_type;
>  }
>
> +static int wcd_mbhc_get_spl_hs_thres(struct wcd_mbhc *mbhc)
> +{
> +       int hs_threshold, micbias_mv;
> +
> +       micbias_mv = wcd_mbhc_get_micbias(mbhc);
> +       if (mbhc->cfg->hs_thr && mbhc->cfg->micb_mv != WCD_MBHC_ADC_MICBIAS_MV) {
> +               if (mbhc->cfg->micb_mv == micbias_mv)
> +                       hs_threshold = mbhc->cfg->hs_thr;
> +               else
> +                       hs_threshold = (mbhc->cfg->hs_thr * micbias_mv) / mbhc->cfg->micb_mv;
> +       } else {
> +               hs_threshold = ((WCD_MBHC_ADC_HS_THRESHOLD_MV * micbias_mv) /
> +                                                       WCD_MBHC_ADC_MICBIAS_MV);
> +       }
> +       return hs_threshold;
> +}
> +
> +static bool wcd_mbhc_check_for_spl_headset(struct wcd_mbhc *mbhc)
> +{
> +       bool is_spl_hs = false;
> +       int output_mv, hs_threshold, hph_threshold;
> +
> +       if (!mbhc->mbhc_cb->mbhc_micb_ctrl_thr_mic)
> +               return false;
> +
> +       /* Bump up MIC_BIAS2 to 2.7V */
> +       mbhc->mbhc_cb->mbhc_micb_ctrl_thr_mic(mbhc->component, MIC_BIAS_2, true);
> +       usleep_range(10000, 10100);
> +
> +       output_mv = wcd_measure_adc_once(mbhc, MUX_CTL_IN2P);
> +       hs_threshold = wcd_mbhc_get_spl_hs_thres(mbhc);
> +       hph_threshold = wcd_mbhc_adc_get_hph_thres(mbhc);
> +
> +       if (output_mv > hs_threshold || output_mv < hph_threshold) {
> +               if (mbhc->force_linein == true)

Just 'if (mbhc->force_linein)'

Also, if this is false, then false is set above. So checking for
mbhc->force_linein is useless.

> +                       is_spl_hs = false;
> +       } else {
> +               is_spl_hs = true;
> +       }
> +
> +       /* Back MIC_BIAS2 to 1.8v if the type is not special headset */
> +       if (!is_spl_hs) {
> +               mbhc->mbhc_cb->mbhc_micb_ctrl_thr_mic(mbhc->component, MIC_BIAS_2, false);
> +               /* Add 10ms delay for micbias to settle */
> +               usleep_range(10000, 10100);
> +       }
> +
> +       return is_spl_hs;
> +}
> +
>  static void wcd_correct_swch_plug(struct work_struct *work)
>  {
>         struct wcd_mbhc *mbhc;
> @@ -1029,12 +1079,14 @@ static void wcd_correct_swch_plug(struct work_struct *work)
>         enum wcd_mbhc_plug_type plug_type = MBHC_PLUG_TYPE_INVALID;
>         unsigned long timeout;
>         int pt_gnd_mic_swap_cnt = 0;
> -       int output_mv, cross_conn, hs_threshold, try = 0;
> +       int output_mv, cross_conn, hs_threshold, try = 0, micbias_mv;
> +       bool is_spl_hs = false;
>         bool is_pa_on;
>
>         mbhc = container_of(work, struct wcd_mbhc, correct_plug_swch);
>         component = mbhc->component;
>
> +       micbias_mv = wcd_mbhc_get_micbias(mbhc);
>         hs_threshold = wcd_mbhc_adc_get_hs_thres(mbhc);
>
>         /* Mask ADC COMPLETE interrupt */
> @@ -1097,6 +1149,16 @@ static void wcd_correct_swch_plug(struct work_struct *work)
>                 plug_type = wcd_mbhc_get_plug_from_adc(mbhc, output_mv);
>                 is_pa_on = wcd_mbhc_read_field(mbhc, WCD_MBHC_HPH_PA_EN);
>
> +               if ((output_mv > hs_threshold) && (!is_spl_hs)) {

Please drop useless parenthesis

> +                       is_spl_hs = wcd_mbhc_check_for_spl_headset(mbhc);
> +                       output_mv = wcd_measure_adc_once(mbhc, MUX_CTL_IN2P);
> +
> +                       if (is_spl_hs) {
> +                               hs_threshold = (hs_threshold * wcd_mbhc_get_micbias(mbhc)) /
> +                                                                       micbias_mv;

Same. It may be good to split it to two assignments to clarify
overflow/underflow.

> +                       }
> +               }
> +
>                 if ((output_mv <= hs_threshold) && !is_pa_on) {
>                         /* Check for cross connection*/
>                         cross_conn = wcd_check_cross_conn(mbhc);
> @@ -1122,14 +1184,19 @@ static void wcd_correct_swch_plug(struct work_struct *work)
>                         }
>                 }
>
> -               if (output_mv > hs_threshold) /* cable is extension cable */
> +               /* cable is extension cable */
> +               if (output_mv > hs_threshold || mbhc->force_linein == true)

Drop the == true please.

>                         plug_type = MBHC_PLUG_TYPE_HIGH_HPH;
>         }
>
>         wcd_mbhc_bcs_enable(mbhc, plug_type, true);
>
> -       if (plug_type == MBHC_PLUG_TYPE_HIGH_HPH)
> -               wcd_mbhc_write_field(mbhc, WCD_MBHC_ELECT_ISRC_EN, 1);
> +       if (plug_type == MBHC_PLUG_TYPE_HIGH_HPH) {
> +               if (is_spl_hs)
> +                       plug_type = MBHC_PLUG_TYPE_HEADSET;
> +               else
> +                       wcd_mbhc_write_field(mbhc, WCD_MBHC_ELECT_ISRC_EN, 1);
> +       }
>
>         wcd_mbhc_write_field(mbhc, WCD_MBHC_ADC_MODE, 0);
>         wcd_mbhc_write_field(mbhc, WCD_MBHC_ADC_EN, 0);
