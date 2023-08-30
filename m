Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7321E78E062
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 22:16:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238285AbjH3UPL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 16:15:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240077AbjH3UOz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 16:14:55 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C766815D42
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 13:13:03 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-26f3975ddd4so94782a91.1
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 13:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693426289; x=1694031089; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YJMdw/C4AyMPoyB2tq4Z62TY5NrdXD5YnDuPj2zmJiM=;
        b=wd63RLTEf4X+zNRRQc4e2L1ZnCvVAW7KzoNNYpMKAQIGK1xqMfdGGBIoarsHKq8NZi
         2X4+OHSzFsv5QT/n5pKKBzsheMVScnPXCozwcdTvc7dniyrbONq38WVYeKGXNSQS/BhL
         zj8uJcdNetXEtSrHe/rBWvQmcw3iNIN1/yDSeUZWZPpXsuBFA+B39h0ptQdzFP3u0WkA
         r/GozP/4aX7hVLocHQVtemhgdLecDb/mHysFwMe96i/BW7TtilPOqYcCqfjZZXY2Vbu/
         xDnhnZUWN7id0C4DLDVNSWy5yKs0XV7z7WIhWcGfQ56bKIM7OSwE0ZURNXOfTJenuDxc
         H1yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693426289; x=1694031089;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YJMdw/C4AyMPoyB2tq4Z62TY5NrdXD5YnDuPj2zmJiM=;
        b=Jn63gP9nyT8hQOoWLoaMypZy2+EWf1GN07l1GJiJ3ixFjBZRvv7xGDXqZmOObgSL1O
         HMUyf5dCMDvJROpP+dlMTovJ9nidQI7QFac0mWC8i5f7qe0VdNSz7RCWZ0BBx1IYb5Wx
         zt8Y747TZu9e+0g9lfgfaI0Coe+xhZUuBX5teOftMN+MZLQSwPpuwwBkjSBMbFSfN1If
         IlYKMPjdEws2awumlnDCPPqHXirirv/il9IgA9cvsvHFl2mcH6d9jU4VYrB3NimmsdVp
         knYvHroYBnoY8/Y4fZUJX6PaOWdBPtVzhT41EmRKIaLxtz9djsPOi373Yy62e1eHb8Y7
         ndJQ==
X-Gm-Message-State: AOJu0YxDp9wdJjgOmJaNgJhVC4mKdCYHhXMcXbAs4nCNOS9MVoG7kcOK
        Y69zXjFX7Of9iYdt7cDdnhg+DdZa9UsmUDKdsevPHT1g0DCpikQn
X-Google-Smtp-Source: AGHT+IGkX+b8/id5mnhsdSwU9pp41YFk3WYZkYEZqYPlBixDk1KbdsztU74V3Q6iBQqWEbgI4/9irEaASDq7WrvYvAE=
X-Received: by 2002:a5b:889:0:b0:d47:3d16:4b0d with SMTP id
 e9-20020a5b0889000000b00d473d164b0dmr2944641ybq.25.1693424889246; Wed, 30 Aug
 2023 12:48:09 -0700 (PDT)
MIME-Version: 1.0
References: <20230829095423.760641-1-quic_gokulsri@quicinc.com>
 <20230829095423.760641-2-quic_gokulsri@quicinc.com> <3722a8f6-8f63-fe7c-6983-ac96caa18c87@linaro.org>
 <d2080d0b-f0d2-b5f2-4fd5-c929735e406c@quicinc.com>
In-Reply-To: <d2080d0b-f0d2-b5f2-4fd5-c929735e406c@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Wed, 30 Aug 2023 22:47:58 +0300
Message-ID: <CAA8EJpo=e0JNWRhERUFFtLZ6o+hMhdBspC8yPi3j8U0AAo_FQw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: clock: qcom,a53pll: add IPQ5018 compatible
To:     Gokul Sriram P <quic_gokulsri@quicinc.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, jassisinghbrar@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_varada@quicinc.com, quic_srichara@quicinc.com
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

On Wed, 30 Aug 2023 at 21:31, Gokul Sriram P <quic_gokulsri@quicinc.com> wrote:
>
>
> On 8/29/2023 3:39 PM, Krzysztof Kozlowski wrote:
> > On 29/08/2023 11:54, Gokul Sriram Palanisamy wrote:
> >> Add IPQ5018 compatible to A53 PLL bindings.
> >>
> >> Co-developed-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> >> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> > Knowing that this patch could not come from downstream (it's some old
> > kernel without this file), I really wonder why two people were involved
> > in developing trivial one line change.
> Sure, I had kept this co-developed-by for this whole series of patches.
> will remove co-developed-by for this patch.

Each patch is individual, even if they form a series. Different
patches might be developed by different parties or a combination of
them.


-- 
With best wishes
Dmitry
