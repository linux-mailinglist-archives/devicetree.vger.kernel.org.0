Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06EE1462792
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 00:05:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236077AbhK2XH6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 18:07:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235996AbhK2XHJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 18:07:09 -0500
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B92FFC03AD4A
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 10:08:54 -0800 (PST)
Received: by mail-pg1-x532.google.com with SMTP id f125so3687242pgc.0
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 10:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=rP+kmQ5wlVc+pR2GAaszPahOc1SeLyhDcPjEPnD8vp8=;
        b=Sx+Cd5E8JI8zEmKLPz+YRIFV82PQSl8DV4hUwC+cQ6uo3Vv6YiMyl7IU/7fFxvhdle
         rKahqkKvRC+hEKXAPC0QgJilRZsblIxkNdKQU5+dIUYaVWWHLQ0ngKa2u0efwtrHtlD1
         VtwZjctDXvZQ9/XYhrKHeSxb62V/LHMwNlzE4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=rP+kmQ5wlVc+pR2GAaszPahOc1SeLyhDcPjEPnD8vp8=;
        b=6DD3+lOZ/E2q+uWv87veqnqKIeMWGHKwVHZCBK6An9iqWQikLI2kzuDn+cyIqmUb1d
         MCks114h6/7SOxWaeV/ARiad0wnP0SIoJ1A8GPqV3jFlOyHmPGOkdIWJXMJbDW1Svvmr
         bgnAQX5LVO5H26ZBe2TgFQUJZQIzxi/q1qt1iZGuWBTHWPrXmDbQ6rVLkilhgmPuaTk6
         v2CcByr4hqVt9eTJyIk6EImcBtWVTFJKti1qHF1Kj2YZgVgJHLPDfTULkdjQYukN+i8u
         20U/vIjWjSORziyF1HrsNbWzxv8jHEOOoi+AXHqiE2g2h8WmGKSMkxgA1n2eR1z2k4jN
         Go8A==
X-Gm-Message-State: AOAM532CamEBifdkZ/G1J7ZyGF7CvSFQ9U5bawEyEB7RTmPh+wkfME2f
        ZekF2J6huTues3IgljeMGEuQpQ==
X-Google-Smtp-Source: ABdhPJyBgug4oG2KvEUDqd0Zf+drGvUYuM0nyMa78y6ktglY2/5CuXmSrvYNfK42nb98+565lrPVAw==
X-Received: by 2002:a63:5308:: with SMTP id h8mr36326936pgb.287.1638209334244;
        Mon, 29 Nov 2021 10:08:54 -0800 (PST)
Received: from localhost ([2620:15c:202:201:d16f:3a09:ab7a:238e])
        by smtp.gmail.com with UTF8SMTPSA id g7sm18644943pfv.159.2021.11.29.10.08.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Nov 2021 10:08:53 -0800 (PST)
Date:   Mon, 29 Nov 2021 10:08:52 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajendra Nayak <quic_rjendra@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dianders@chromium.org,
        kgodara@codeaurora.org
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: qcom: Document qcom,sc7280-crd
 board
Message-ID: <YaUXNG0EEKsyfbPC@google.com>
References: <1638185497-26477-1-git-send-email-quic_rjendra@quicinc.com>
 <1638185497-26477-2-git-send-email-quic_rjendra@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1638185497-26477-2-git-send-email-quic_rjendra@quicinc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 29, 2021 at 05:01:34PM +0530, Rajendra Nayak wrote:
> Document the qcom,sc7280-crd board based off sc7280 SoC,
> The board is also known as hoglin in the Chrome OS builds,
> so document the google,hoglin compatible as well.
> 
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index c8808e0..91937ab 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -203,6 +203,8 @@ properties:
>            - enum:
>                - qcom,sc7280-idp
>                - qcom,sc7280-idp2
> +              - qcom,sc7280-crd

nit: add in alphabetical order, i.e. before qcom,sc7280-idp

> +              - google,hoglin
>                - google,piglin
>                - google,senor
>            - const: qcom,sc7280

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
