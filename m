Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A22DE55EF83
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 22:24:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230327AbiF1UY1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 16:24:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232179AbiF1UVm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 16:21:42 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60ADA3D1F6
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 13:19:37 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id p8so18720510oip.8
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 13:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NQpND458z3IC4Odlss8f+0pJiS4X3ids1xb0R79Tk9s=;
        b=ZRFTwiseNq/07y2wi0OcvM3bnWx2X0gHhB6RFo6uG1Ml786at6O7Yl3fnHiYIYtX8B
         malpAvoCjImS9OETF4JennoN/1ilguvcVS8nip46MtxDXbS4hwHn9Km8EA+ZpBRANU3G
         iLreEV+0MyO5pWjtVoK2I4SQPmKZ/PL5iXdUMEzuoY3ofWBRVNKKDEzYD4FtDuD8jLpg
         91F4LZbIc36AFLa7cBS4UCx3UelRcXruGi4AYD3mby7i+9O7ytsMvO+G1Yy1oABlAmLZ
         sG+8ifPMTgQ9CtmpOvoXdljQr5jWwyBml6GEp7+dLlNAnrm64AXWqOiMBpMMSrwWqktQ
         Upmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NQpND458z3IC4Odlss8f+0pJiS4X3ids1xb0R79Tk9s=;
        b=oTBFUXRxo8NXtDWsfBWLMLChsaCwcx+Zd+rFoAcXXATOwBbEwvrORyd7d+YAJC8zrk
         H4rmk9uzqooGaFuyuOum29O9+10XHasuVqNMovhvUGrjIMAeVgGka+ExlJ76zfMqRcZr
         screW9wJkR3J9TFlX3gToYwbbGBkQ6bdbY9K5aWaG3wPA6SHFoHV8nnd2YubS/JhkAQn
         Qvj6quVz9T5LthEJ4mhRhYdJrRholivqzvIkiWYj8z9ABT2L4fbPwpqR/jhTJpaJjyB+
         8unh6NI6d2favKf537Wn2k5OitXH4k5yIn5h9TcDPXPPyxXuAIUJKq3HxRmz4zzQN/lM
         f4Wg==
X-Gm-Message-State: AJIora9rjRs/peHXDVwTC6nXYNdd2wRI2/iKbw7czaG8xOg3JWyXFGeq
        oM0qd5KPlkulu/lk6hyvQbGr5n7zagKdvg==
X-Google-Smtp-Source: AGRyM1tb2bgMKzTL3KVsVADswXMYQW0RxHDoAaWrKDmNgsaFPiiI8I0xppgl6dMjJpsaDJ8JBUpLeQ==
X-Received: by 2002:a05:6808:115:b0:335:23c0:5460 with SMTP id b21-20020a056808011500b0033523c05460mr890192oie.117.1656447577147;
        Tue, 28 Jun 2022 13:19:37 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id a12-20020a056870d60c00b000f30837129esm9536923oaq.55.2022.06.28.13.19.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 13:19:36 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Marijn Suijten <marijn.suijten@somainline.org>,
        phone-devel@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Martin Botka <martin.botka@somainline.org>,
        linux-arm-msm@vger.kernel.org,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-akatsuki: Round down l22a regulator voltage
Date:   Tue, 28 Jun 2022 15:19:06 -0500
Message-Id: <165644753307.10525.17092818321513559664.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220620211212.269956-1-marijn.suijten@somainline.org>
References: <20220620211212.269956-1-marijn.suijten@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 20 Jun 2022 23:12:12 +0200, Marijn Suijten wrote:
> 2700000 is not a multiple of pmic4_pldo's step size of 8000 (with base
> voltage 1664000), resulting in pm8998-rpmh-regulators not probing.  Just
> as we did with MSM8998's Sony Yoshino Poplar [1], round the voltages
> down to err on the cautious side and leave a comment in place to
> document this discrepancy wrt downstream sources.
> 
> [1]: https://lore.kernel.org/linux-arm-msm/20220507153627.1478268-1-marijn.suijten@somainline.org/
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: sdm845-akatsuki: Round down l22a regulator voltage
      commit: 4148a9eeb15152865d60b0913d96beb7ca166f9a

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
