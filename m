Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B4C678E100
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 22:52:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240399AbjH3Uwk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 16:52:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240451AbjH3Uwj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 16:52:39 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2AB1CF3
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 13:52:07 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-d7b8d2631fdso1799414276.3
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 13:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693428667; x=1694033467; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zgGcuZzmr94KnU1bouNuOO19+UEQyecBFbXFTDXATYI=;
        b=fdI6sdUELuvUBntbsN7m0ehxXUwGCDvNLBSPP8OzdJyW0y35rRCxw4PomQ1fEFhnaU
         BYwLccd/F4R9yGlhnMXwImGL7fSvzRwGJDvsOnlsYuKGeyloseElyZSfMGc3uUjk6kJc
         aKDP9XJBvs17wLdUvi27gQK91Mpa+6fLIieEcZ052nMqlMCujOIIHuV+M4rhGtCaVrhQ
         jFpWQGBB+AzdM4KuZtkoe0YJazPlptfbVLqA6UOgKVPQjODv/MYtgraRJzk1iEDNU4bK
         pA9VK0gXOtbSarjtUhPnVhDpeUoEzrbm9X6vzYnc4SRWnmkNjQyz1uly2ZmunXQb1tk4
         4zNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693428667; x=1694033467;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zgGcuZzmr94KnU1bouNuOO19+UEQyecBFbXFTDXATYI=;
        b=RpEj9odaSFxy1KdqSipM9o6l1hzgk208FfvkcJkPUwgKGeoLLTYoftEtLEwVbH2kvZ
         +8kgKEnzBzcuMjoOLn5Y0Bm70gHGuU/WMzjuqOWqJvGdUWJrW4+9OYMK45LVcdYdRH84
         wQffwbQZvZldMXOBsTPeO9fvMxqqFmhps8URLY41d/B+4DhlOmN1/OU6GvNHy2RliH5T
         M49BC+FbN0RYKg1WFSqRbU6RHE3aFiLLpjOcKVySF1I4EuGDnKHROm4JeDKvwfPF1tJ0
         +7URAA6OxKp/fcrSX0S7C8E8zGIzCnFzl1rm1DWO+Mdv9f4o3OE5i6UbEoBIeXq7rISj
         onKg==
X-Gm-Message-State: AOJu0YyxQORGZi55fxZDHhAR9zJa5vR6jRfQwIYtt5+1K5eAX8jUDw+l
        QmAgv84b2seaInViQcGKjzpFtO6eVhYvFgx5tMGOKI0rW4XPn2wS
X-Google-Smtp-Source: AGHT+IHQgtmM/qEVU0UPeKqjFQmhQ59kgaPGxMwjXFavmatbWZ/rYVEWaDpXKACaogW7azdD4O9hjOLZ+ECSgh1rHzs=
X-Received: by 2002:a25:8481:0:b0:d7b:986e:9999 with SMTP id
 v1-20020a258481000000b00d7b986e9999mr3320097ybk.42.1693426316786; Wed, 30 Aug
 2023 13:11:56 -0700 (PDT)
MIME-Version: 1.0
References: <20230825093531.7399-1-quic_nsekar@quicinc.com> <20230825093531.7399-6-quic_nsekar@quicinc.com>
In-Reply-To: <20230825093531.7399-6-quic_nsekar@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Wed, 30 Aug 2023 23:11:45 +0300
Message-ID: <CAA8EJppvNS_hy=L+zgk5HAB5iDEZE_j5LvEmQgAfcnwfy_7wNA@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: qcom: ipq5018: Enable USB
To:     Nitheesh Sekar <quic_nsekar@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org, quic_srichara@quicinc.com,
        quic_varada@quicinc.com, quic_wcheng@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Amandeep Singh <quic_amansing@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 25 Aug 2023 at 12:37, Nitheesh Sekar <quic_nsekar@quicinc.com> wrote:
>
> Enable USB2 in host mode.
>
> Co-developed-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> index e636a1cb9b77..cdf5e22ec54e 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> @@ -70,3 +70,15 @@
>  &xo_board_clk {
>         clock-frequency = <24000000>;
>  };
> +
> +&usbphy0 {
> +       status = "okay";
> +};
> +
> +&usb {
> +       status = "okay";
> +};
> +
> +&usb2_0_dwc {
> +       dr_mode = "host";
> +};

Let me sort these for you:

- usb
- usb2_0_dwc
- usbphy0

Like in a dictionary.

-- 
With best wishes
Dmitry
