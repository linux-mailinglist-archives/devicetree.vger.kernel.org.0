Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC8B0715DB2
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 13:45:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232059AbjE3Lpn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 07:45:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232269AbjE3LpP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 07:45:15 -0400
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB37CFF
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 04:44:52 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-565cd2fc9acso40622667b3.0
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 04:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685447089; x=1688039089;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=S9RhZ916M+s7tDZgpo9Wzznoebm/fAUfY5MYE+/drBw=;
        b=OKIoEEWyVizW6XkMyPO6QwCMHd/0iR5rmncpIrrQUQTlksDWz0wcVDYuWhketFlx0A
         Sfa8B942ObG4Kxcw5EP3m06QSc/TVMh19u2OKWiyvtB2xQFj9QOvTNeqkvoYjAZrPRBH
         d73Sf1ajmNzMqgTUhPS5x0CPF/gryqjpiy5QgeL08IEcS7YEjomUKk7qblD9HoI2wkM1
         pAyB1XFj+UAR46Gp7Exesye2q8N9M3Cql6pFGtgaIBJZFwvYQySIO4qTuXaHgasKuWSv
         9wKHT+X167H5pS120gtowatFGeqeZ4reAdUoU8+JOBW5DdVTkvtb1wqB5+NH8mE4wrg4
         b/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685447089; x=1688039089;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S9RhZ916M+s7tDZgpo9Wzznoebm/fAUfY5MYE+/drBw=;
        b=lrW+QdEverAfy5hy80mKBxEFmYhqC0PvJUa5DaAUdTJuAiJj6nmhtBbFU38x/S1rWE
         mFU/1G+uHu38LA9Ji2hE8rtQKaC0f46xfAYcgMu4gIKyFdgrJCFwsJpen4E7fe8BQbCQ
         acYVa6YS+V+kcDDCuH/NukdzYchuMFKuE/I5KEpNNPYf6zwZ1lEUTnAWiUmDu83bKltl
         nx5wwIEQRqF1EfMjq7qaaok568LwSmHOvVh2DtSWFzhVS6d56gnnJL/VH4f8SnDOl8LS
         LdJYOUDYZnsF+/aDP15SXP2JBUKVlS9Yy7ndTfPybQy+1wfjRUJiFUTTjsnLHoeuJkDY
         HNbw==
X-Gm-Message-State: AC+VfDxtmetvG/uSN2veY8zRv88RXmq91FBizPoLr40cRIwDyryHBh2P
        deLjFZyZ4LxO5Civtxg8amxBlrJUyS8Zj9pEJ8GQ7A==
X-Google-Smtp-Source: ACHHUZ4hbxOl2LP2th0Gz1Dge04tp/BfXhVAvw6UvSmrbx4UBGt42Qesjqw4YEtzSIadW85OqQ9H/daPolj3cnlcyLA=
X-Received: by 2002:a0d:cc52:0:b0:565:ba4b:aa81 with SMTP id
 o79-20020a0dcc52000000b00565ba4baa81mr2348049ywd.45.1685447089579; Tue, 30
 May 2023 04:44:49 -0700 (PDT)
MIME-Version: 1.0
References: <20230521-drm-panels-sony-v1-0-541c341d6bee@somainline.org>
 <20230521-drm-panels-sony-v1-3-541c341d6bee@somainline.org>
 <ccc97880-8e74-b85b-9679-9c12c44c4b99@linaro.org> <brmrqeajbq3oyp3jjwmc6tuhiftz764u6az444xw6g7pwf5fr3@5tlp375qwhed>
 <617c8f8a-1fc7-c6a0-eaa5-ce75ff2adc1b@linaro.org>
In-Reply-To: <617c8f8a-1fc7-c6a0-eaa5-ce75ff2adc1b@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 30 May 2023 14:44:38 +0300
Message-ID: <CAA8EJppG=MAVpK1J_8bNnkJ23y9NtgY7a2GVResXJvhEKyNsrw@mail.gmail.com>
Subject: RFC: DSI host capabilities (was: [PATCH RFC 03/10] drm/panel: Add LGD
 panel driver for Sony Xperia XZ3)
To:     Neil Armstrong <neil.armstrong@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        Caleb Connolly <caleb@connolly.tech>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <dri-devel@lists.freedesktop.org>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        freedreno <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 30 May 2023 at 10:24, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Hi Marijn, Dmitry, Caleb, Jessica,
>
> On 29/05/2023 23:11, Marijn Suijten wrote:
> > On 2023-05-22 04:16:20, Dmitry Baryshkov wrote:
> > <snip>
> >>> +   if (ctx->dsi->dsc) {
> >>
> >> dsi->dsc is always set, thus this condition can be dropped.
> >
> > I want to leave room for possibly running the panel without DSC (at a
> > lower resolution/refresh rate, or at higher power consumption if there
> > is enough BW) by not assigning the pointer, if we get access to panel
> > documentation: probably one of the magic commands sent in this driver
> > controls it but we don't know which.
>
> I'd like to investigate if DSC should perhaps only be enabled if we
> run non certain platforms/socs ?
>
> I mean, we don't know if the controller supports DSC and those particular
> DSC parameters so we should probably start adding something like :
>
> static drm_dsc_config dsc_params_qcom = {}
>
> static const struct of_device_id panel_of_dsc_params[] = {
>         { .compatible = "qcom,sm8150", , .data = &dsc_params_qcom },
>         { .compatible = "qcom,sm8250", , .data = &dsc_params_qcom },
>         { .compatible = "qcom,sm8350", , .data = &dsc_params_qcom },
>         { .compatible = "qcom,sm8450", , .data = &dsc_params_qcom },
> };

I think this would damage the reusability of the drivers. The panel
driver does not actually care if the SoC is SM8350, sunxi-something or
RCar.
Instead it cares about host capabilities.

I think instead we should extend mipi_dsi_host:

#define MIPI_DSI_HOST_MODE_VIDEO BIT(0)
#define MIPI_DSI_HOST_MODE_CMD  BIT(1)
#define MIPI_DSI_HOST_VIDEO_SUPPORTS_COMMANDS BIT(2)
// FIXME: do we need to provide additional caps here ?

#define MIPI_DSI_DSC_1_1 BIT(0)
#define MIPI_DSI_DSC_1_2 BIT(1)
#define MIPI_DSI_DSC_NATIVE_422 BIT(2)
#define MIPI_DSI_DSC_NATIVE_420 BIT(3)
#define MIPI_DSI_DSC_FRAC_BPP BIT(4)
// etc.

struct mipi_dsi_host {
 // new fields only
  unsigned long mode_flags;
  unsigned long dsc_flags;
};

Then the panel driver can adapt itself to the host capabilities and
(possibly) select one of the internally supported DSC profiles.

>
> ...
> static int sony_akatsuki_lgd_probe(struct mipi_dsi_device *dsi)
> ...
>         const struct of_device_id *match;
>
> ...
>         match = of_match_node(panel_of_dsc_params, of_root);
>         if (match && match->data) {
>                 dsi->dsc = devm_kzalloc(&dsi->dev, sizeof(*dsc), GFP_KERNEL);
>                 memcpy(dsi->dsc, match->data, sizeof(*dsc));
>         } else {
>                 dev_warn(&dsi->dev, "DSI controller is not marked as supporting DSC\n");
>         }
> ...
> }
>
> and probably bail out if it's a DSC only panel.
>
> We could alternatively match on the DSI controller's dsi->host->dev instead of the SoC root compatible.
>
> Neil

-- 
With best wishes
Dmitry
