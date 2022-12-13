Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 591E064BF0F
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 23:06:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236791AbiLMWGa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 17:06:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236781AbiLMWG2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 17:06:28 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF8EBEE3D
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 14:06:26 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id s25so4871505lji.2
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 14:06:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PHThMmwwapkBACqPYp+PHJPVYJlx4hVFJm7MzOxx0AQ=;
        b=zyIABU4u5XC9lj24aumsl6geFLLMFUkaXLx1rjZ6EOJ6sOD4OTHlJXPcJ2xQwAdXQl
         OvEw8d6Ql/8FZQVrkcuz0TA7/81wX9ThJ8NmZt22U9L2VHxVgKwHPYk+Jj2S70CGgK/m
         rkFa/EjyNrloqJllfe4/l8VhKHuraIoGAIFMeCTAJuamYHZx6+1TWx8tldNjuH/B4tNZ
         bFfOPyX3XipyS6htaw94ZTzGdh582g5A/WqlZaOO2Pk9FGT8hBk7TJbZMcaU+LaSNoLf
         9ZiHtj+fA/8nk419KphXaDVfHrAlmuqr/041inbRX7WfYrPgwb0tDj3mjoW0EQLXBV2i
         RCzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PHThMmwwapkBACqPYp+PHJPVYJlx4hVFJm7MzOxx0AQ=;
        b=0uLkHnArMWg2mnLwhV12zEUMWLnegTAMhcXa3jyUXZ5UAfi+3cqYVN08H+zYoqFw5I
         JobsCHiequkoBLWLmnPzLYhzV7FW0BohPasc8alqghVETqhdQ2BpVHFHCzByjAZLOWZT
         pwCJS6P8iY6o4sSm41Smw1z+UdyCR9fbMm1PK/2Jna/lUFHwlM9c4ZLJGX3dKjL0HEkt
         ZlfjSiPcpWvF/0dP3rOZh0A2vnUhOFs/7eoNCL1zGR+Tnhap+h5sfTKBqmXyYsR5qs4U
         GAo5NcnLj7cs6V8rF1/0bmV+NSIGUsgDmXPhvEwj2fkdHc6Bagv2qDWpUTuJw4oBZs7U
         jLCQ==
X-Gm-Message-State: ANoB5plwbqrkaCa0SU2mcnGKKgQO28dyreDvsuad1+AoEs9SNi42zlxN
        /KojI7i/kLQj87w9Q6wYmFVK9Q==
X-Google-Smtp-Source: AA0mqf5x9JQNyXDM15td8Hcfv9iyRYDTIvPJgNyej6Avufwz3ylJoGP8oNR4c9fzBciDVfV7f+Vpug==
X-Received: by 2002:a05:651c:154d:b0:27b:5080:d03d with SMTP id y13-20020a05651c154d00b0027b5080d03dmr3722979ljp.10.1670969185336;
        Tue, 13 Dec 2022 14:06:25 -0800 (PST)
Received: from ?IPv6:::1? (dzccz6yfpdgdc5vwjcs5y-3.rev.dnainternet.fi. [2001:14ba:a085:4d00:8c19:462c:c647:13f2])
        by smtp.gmail.com with ESMTPSA id k8-20020ac257c8000000b004b0a1e77cb2sm527474lfo.137.2022.12.13.14.06.24
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Dec 2022 14:06:24 -0800 (PST)
Date:   Wed, 14 Dec 2022 00:06:21 +0200
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Kuogee Hsieh <quic_khsieh@quicinc.com>,
        dri-devel@lists.freedesktop.org, robdclark@gmail.com,
        sean@poorly.run, swboyd@chromium.org, dianders@chromium.org,
        vkoul@kernel.org, daniel@ffwll.ch, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, airlied@gmail.com
CC:     quic_abhinavk@quicinc.com, quic_sbillaka@quicinc.com,
        freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v12 5/5] drm/msm/dp: add support of max dp link rate
User-Agent: K-9 Mail for Android
In-Reply-To: <1670967848-31475-6-git-send-email-quic_khsieh@quicinc.com>
References: <1670967848-31475-1-git-send-email-quic_khsieh@quicinc.com> <1670967848-31475-6-git-send-email-quic_khsieh@quicinc.com>
Message-ID: <8FEED6F1-4F23-4B17-AD4C-8145CDE8C47B@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 13 December 2022 23:44:08 EET, Kuogee Hsieh <quic_khsieh@quicinc=2Ecom>=
 wrote:
>By default, HBR2 (5=2E4G) is the max link link be supported=2E This patch=
 uses the
>actual limit specified by DT and removes the artificial limitation to 5=
=2E4 Gbps=2E
>Supporting HBR3 is a consequence of that=2E
>
>Changes in v2:
>-- add max link rate from dtsi
>
>Changes in v3:
>-- parser max_data_lanes and max_dp_link_rate from dp_out endpoint
>
>Changes in v4:
>-- delete unnecessary pr_err
>
>Changes in v5:
>-- split parser function into different patch
>
>Changes in v9:
>-- revised commit test
>
>Signed-off-by: Kuogee Hsieh <quic_khsieh@quicinc=2Ecom>
>Reviewed-by: Dmitry Baryshkov <dmitry=2Ebaryshkov@linaro=2Eorg>
>---
> drivers/gpu/drm/msm/dp/dp_display=2Ec | 4 ++++
> drivers/gpu/drm/msm/dp/dp_panel=2Ec   | 7 ++++---
> drivers/gpu/drm/msm/dp/dp_panel=2Eh   | 1 +
> 3 files changed, 9 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/msm/dp/dp_display=2Ec b/drivers/gpu/drm/msm/=
dp/dp_display=2Ec
>index bfd0aef=2E=2Eedee550 100644
>--- a/drivers/gpu/drm/msm/dp/dp_display=2Ec
>+++ b/drivers/gpu/drm/msm/dp/dp_display=2Ec
>@@ -390,6 +390,10 @@ static int dp_display_process_hpd_high(struct dp_dis=
play_private *dp)
> 	struct edid *edid;
>=20
> 	dp->panel->max_dp_lanes =3D dp->parser->max_dp_lanes;
>+	dp->panel->max_dp_link_rate =3D dp->parser->max_dp_link_rate;
>+
>+	drm_dbg_dp(dp->drm_dev, "max_lanes=3D%d max_link_rate=3D%d\n",
>+		dp->panel->max_dp_lanes, dp->panel->max_dp_link_rate);
>=20
> 	rc =3D dp_panel_read_sink_caps(dp->panel, dp->dp_display=2Econnector);
> 	if (rc)
>diff --git a/drivers/gpu/drm/msm/dp/dp_panel=2Ec b/drivers/gpu/drm/msm/dp=
/dp_panel=2Ec
>index 5149ceb=2E=2E933fa9c 100644
>--- a/drivers/gpu/drm/msm/dp/dp_panel=2Ec
>+++ b/drivers/gpu/drm/msm/dp/dp_panel=2Ec
>@@ -75,12 +75,13 @@ static int dp_panel_read_dpcd(struct dp_panel *dp_pan=
el)
> 	link_info->rate =3D drm_dp_bw_code_to_link_rate(dpcd[DP_MAX_LINK_RATE])=
;
> 	link_info->num_lanes =3D dpcd[DP_MAX_LANE_COUNT] & DP_MAX_LANE_COUNT_MA=
SK;
>=20
>+	/* Limit data lanes from data-lanes of endpoint properity of dtsi */

Nit: property=2E And below too=2E

> 	if (link_info->num_lanes > dp_panel->max_dp_lanes)
> 		link_info->num_lanes =3D dp_panel->max_dp_lanes;
>=20
>-	/* Limit support upto HBR2 until HBR3 support is added */
>-	if (link_info->rate >=3D (drm_dp_bw_code_to_link_rate(DP_LINK_BW_5_4)))
>-		link_info->rate =3D drm_dp_bw_code_to_link_rate(DP_LINK_BW_5_4);
>+	/* Limit link rate from link-frequencies of endpoint properity of dtsi =
*/
>+	if (link_info->rate > dp_panel->max_dp_link_rate)
>+		link_info->rate =3D dp_panel->max_dp_link_rate;
>=20
> 	drm_dbg_dp(panel->drm_dev, "version: %d=2E%d\n", major, minor);
> 	drm_dbg_dp(panel->drm_dev, "link_rate=3D%d\n", link_info->rate);
>diff --git a/drivers/gpu/drm/msm/dp/dp_panel=2Eh b/drivers/gpu/drm/msm/dp=
/dp_panel=2Eh
>index d861197a=2E=2Ef04d021 100644
>--- a/drivers/gpu/drm/msm/dp/dp_panel=2Eh
>+++ b/drivers/gpu/drm/msm/dp/dp_panel=2Eh
>@@ -50,6 +50,7 @@ struct dp_panel {
>=20
> 	u32 vic;
> 	u32 max_dp_lanes;
>+	u32 max_dp_link_rate;
>=20
> 	u32 max_bw_code;
> };

--=20
With best wishes
Dmitry
