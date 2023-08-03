Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB39176E326
	for <lists+devicetree@lfdr.de>; Thu,  3 Aug 2023 10:30:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234614AbjHCIap (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 04:30:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234556AbjHCIaS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 04:30:18 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DE484225
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 01:27:04 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3fbd33a57b6so7207125e9.2
        for <devicetree@vger.kernel.org>; Thu, 03 Aug 2023 01:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691051223; x=1691656023;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RsBPXwTb7KnuCCCW3N3MxflKzaNoyu2cFrZoc/58LVc=;
        b=tKlwFtNQTIy2DnSLD/45g56iRGyTM8kdDa6wjhtNIW7QB0pJovZVUdJFTljTEP4A07
         NNiNk0TSAoL9dv3jIcGAiDfju5M/P8wqrqewApcAtgWnMIX9fm15YGG2gGQS5a2Ir3hB
         7a1Zf5aRs9Zi8ZF+VAaQGqGsxmmtlk0s6qJ889Ke3gli3+JCyiyKRh1DCTwdlEdsJlYt
         XqqkV9AC8WXDH/q2TFKvOfkKSPXqBEWyupy2Y/FI1PJY6OMdPJJMkRtnI3KAra7fMq+T
         9zzG5Ci2SP5l8K/tP7BhjNrnAlgedfVrGkuR0LqdlKGEI1mLxeC56yOG59qlLyXGINS7
         cikw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691051223; x=1691656023;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RsBPXwTb7KnuCCCW3N3MxflKzaNoyu2cFrZoc/58LVc=;
        b=iUIgLVanXLNj066GaJALGhXDjbm65SJhiEu5494/1C6dejwljyrEhy3JweJSUe/HOm
         oOTI+SdFdFziVTN3P6cGFjWSWiwX/Tsjv6ZuCuPplqpKG4ByrfTaPpOKaCmqmS5L+1uZ
         v9hpL7DBiPPFPLMQTu46jOKd3vfeFlFJKQUWLyQzEya8P88Ww+L9J7q76HkduPbwONaR
         St1g0W1Jr6b6XGsHFNZLup0ZlRDDARfEdINNguMoaR22sAc2EaUsh+JypADuRb2peXO4
         cc9f4Q4E3HJWp9dQJDmPFJzW2QGZPP2NidWj1qLOoap09ugRmW9FRcodkTok8trAkXDe
         E4qw==
X-Gm-Message-State: ABy/qLYvCD9lAqlYhRfwYbwpvRX+4Wgnooz4VE7B8Cg0Kjn67gSa5Uch
        LOxZ33u/TmO5XRIsvptwtP4VZQ==
X-Google-Smtp-Source: APBJJlGuXtwgmbQ/cdj9vqunJuA2ynAh8F2Bj8J6lezBOaNsG/6/fAvd+CjhIXK6IugnYHqxz6nEQA==
X-Received: by 2002:a1c:7511:0:b0:3fe:2f31:8bf7 with SMTP id o17-20020a1c7511000000b003fe2f318bf7mr3957496wmc.26.1691051222804;
        Thu, 03 Aug 2023 01:27:02 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id m7-20020a05600c280700b003fe1cb874afsm3630150wmb.18.2023.08.03.01.27.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 01:27:02 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     dri-devel@lists.freedesktop.org, Marek Vasut <marex@denx.de>
Cc:     Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org
In-Reply-To: <20230731210258.256152-1-marex@denx.de>
References: <20230731210258.256152-1-marex@denx.de>
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Add Innolux
 G156HCE-L01 panel
Message-Id: <169105122177.2500518.10935834416941997220.b4-ty@linaro.org>
Date:   Thu, 03 Aug 2023 10:27:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, 31 Jul 2023 23:02:57 +0200, Marek Vasut wrote:
> Add entry for Innolux G156HCE-L01 15.6" 1920x1080 24bpp
> dual-link LVDS TFT panel. Documentation is available at [1].
> 
> [1] https://www.distec.de/fileadmin/pdf/produkte/TFT-Displays/Innolux/G156HCE-L01_Rev.C3_Datasheet.pdf
> 
> 

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/2] dt-bindings: display: simple: Add Innolux G156HCE-L01 panel
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=3c5e8aa44dfc936ab596508158d222e3e87c1a1f
[2/2] drm/panel-simple: Add Innolux G156HCE-L01 panel entry
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=eae7488814b519e49c57dd331a7437d99d8ae91b

-- 
Neil

