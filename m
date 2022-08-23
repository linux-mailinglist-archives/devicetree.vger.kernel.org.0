Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD92559CEE7
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 04:59:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239651AbiHWC7X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 22:59:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239697AbiHWC7T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 22:59:19 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D82AE45051
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 19:59:17 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id u14so14586698oie.2
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 19:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc;
        bh=qvhp/PN3z9UpYVuMsgcJC4Oy2/ZRSa/rXP6JnlrnMVE=;
        b=az+vjmCRAiH8OVkG5/hU8PD2mFnzsja9goZnbrBMHJd9nLcMTnLUg5MiEHoyqh7jnn
         wOm2wIMzhexx42WIblyq8kcg9WEyY9FzVna4DLoKKH1w+M2Cq4b5R9tmHYyFgC1mr41J
         kw9XBhn4x9y4g33vGeg83eV0TlNqNNSq7q2ek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc;
        bh=qvhp/PN3z9UpYVuMsgcJC4Oy2/ZRSa/rXP6JnlrnMVE=;
        b=Zr/3UOi/cznxk+Fi0mfq9JP4wFFsDeVnZdIFQTtuUl3gL5S8VtA+7N/X5nVguNt8Mr
         ZWepVyrw4qj42mlQI9H4ZfJq4Q562E5uc8m72Drmn0j3ZyKIaB2RQoHatk/Zlt/OYZ6L
         mmQoBurbWCvd+WdmmK5ADZUAURBxKt51emCB1IDWRUY70Qm4ozpZH+NZoPy+JGgD6XDW
         jvaOGXg6oXIMUBXBS6EHWxt9b2IvS/6hlCe0nIjgJ/cyPK6KZZfn0Z8mnBayPu7k3PIR
         q5GYXWfjss4QnPzrzYp1RxcoxBMMxvoEVtiuxfZ1MpCCwLV4rMLxcb65GGP/pF1A2WjZ
         03SA==
X-Gm-Message-State: ACgBeo0+Aupx6np8+M2Zea+dhEELaEv3+BbypgCEynKV6Ou2125iCV5K
        8iFyxtRuWoId1NCqJY+92DqN41F7uj/tFN98EAks0A==
X-Google-Smtp-Source: AA6agR6PXqCt0LKI+xicsTuPHjDNzX2YEQK4O0g6hF3ynofM3wUo3dz/OhsSM+18FJV2/aaMHYV1we5XWzeZaGEQuP4=
X-Received: by 2002:a05:6808:bca:b0:344:ef42:930f with SMTP id
 o10-20020a0568080bca00b00344ef42930fmr508119oik.0.1661223557231; Mon, 22 Aug
 2022 19:59:17 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 22 Aug 2022 21:59:16 -0500
MIME-Version: 1.0
In-Reply-To: <20220822184900.307160-3-dmitry.baryshkov@linaro.org>
References: <20220822184900.307160-1-dmitry.baryshkov@linaro.org> <20220822184900.307160-3-dmitry.baryshkov@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 22 Aug 2022 21:59:16 -0500
Message-ID: <CAE-0n50MJFha_OZqcF68rTGwNJmUo-34+erkw=7k3yEvXFg+4g@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: msm/dp: add missing properties
To:     Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2022-08-22 11:48:59)
> Document missing definitions for opp-table (DP controller OPPs), aux-bus
> (DP AUX BUS) and data-lanes (DP/eDP lanes mapping) properties.
>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../bindings/display/msm/dp-controller.yaml          | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index 391910d91e43..52cbf00df0ba 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -70,9 +70,21 @@ properties:
>    operating-points-v2:
>      maxItems: 1
>
> +  opp-table: true
> +
>    power-domains:
>      maxItems: 1
>
> +  aux-bus:
> +    $ref: /schemas/display/dp-aux-bus.yaml#
> +
> +  data-lanes:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 1
> +    maxItems: 4
> +    items:
> +      maximum: 3

It should be marked deprecated, right?
