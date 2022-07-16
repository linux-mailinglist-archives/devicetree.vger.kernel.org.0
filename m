Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17411576FB8
	for <lists+devicetree@lfdr.de>; Sat, 16 Jul 2022 17:19:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232063AbiGPPTW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jul 2022 11:19:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231956AbiGPPTU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Jul 2022 11:19:20 -0400
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2DDD1EAC7
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 08:19:15 -0700 (PDT)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-10bffc214ffso12879854fac.1
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 08:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JXQMyxnxAP0mwIwULZ5zLVovGOX4OoRLrjaAZw8cElc=;
        b=gv/hYrLuhnZXSBtp4LvpRmHMk0ev09AL3m0apJZkWL+zrXpRvmCYibJR4J1NIunBcx
         EV6rnh9k7xKj6d/VPaeCZKFwB47hAAe3+QMLl6jkBEZwJJfX8DXuYl3dARwsouCvRI0w
         /WpJLLZElb4bOP9d8FacaRiRcKiymaWtpoCj260zmHHeTL4AJCeQAkQSfUCbOOVK/sh3
         gPM2Dweb1t+0nR8iEz6ANG/Fjan1cc4s7hcJx4q6HILyCw5JRsXDS2zl23Emid8K30LE
         T7PTc3hoX/5rEjubjbbNxKpS2JYFCs1jPSnuxgW3lGh3LilHnH8taXyHiS0FMDgH59j+
         35OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JXQMyxnxAP0mwIwULZ5zLVovGOX4OoRLrjaAZw8cElc=;
        b=JGYTrCJm8j0vg9J0Hbb+TWS0S+Iesw9Z4K76vevYJbyP4yug5P/q1C/JjFgO0b5QVD
         vGO1NhQSD195GxNZYmTo6FF3wPir63B34HyIPHCq/O2ruK2tD2WbvE1jFK9kYiviX02i
         DQCXtEjCAgj8clNiTb9aPZlZ8EjORbVANEJDQbSE2iF8kBs6z7rPLt8jKeo/Oq9KlFsY
         y/Tr0brZ1USbaZHBaJiaXq/21VFvBE+UILULZv6llRI97AeiWM8BsOFUuAPCPmt9kJ2e
         9YKHG//h8TXa9UhM0GGY0xi0zmhDKnDrEh/0huRAuUHcQsGOy4QYB1N/lXYVXJQVHi7z
         3qgQ==
X-Gm-Message-State: AJIora8Ueq7Q9eUyL8866DpKAOoWagjZNlZHtO4ANkIdX/OvpMBE7tWJ
        2HHp3lA+gT6YW4sjW+z0SRgU1g==
X-Google-Smtp-Source: AGRyM1t2DEzA4aVvHCdDiq0R8NU+rVuhRbFs2WcdHWiNDP3VQrANmSa0q7vcaIaUPZkF4xO64ruW4g==
X-Received: by 2002:a05:6808:1596:b0:337:8c17:b17f with SMTP id t22-20020a056808159600b003378c17b17fmr10073755oiw.294.1657984755558;
        Sat, 16 Jul 2022 08:19:15 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m21-20020a4ad515000000b00425beedad70sm3035254oos.32.2022.07.16.08.19.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Jul 2022 08:19:15 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Andrew Halaney <ahalaney@redhat.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: Re: (subset) [PATCH] arm64: dts: qcom: sc8280xp: fix usb_1 ssphy irq
Date:   Sat, 16 Jul 2022 10:18:58 -0500
Message-Id: <165798474064.1679948.9327118151613973295.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220715165344.28822-1-johan+linaro@kernel.org>
References: <20220715165344.28822-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 15 Jul 2022 18:53:44 +0200, Johan Hovold wrote:
> Fix the usb_1 SS PHY interrupt, which was mistakingly replaced with one
> of the usb_2 PHY interrupts.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sc8280xp: fix usb_1 ssphy irq
      commit: 1583984623cfd6dc025cf5b891f7cfaf36819213

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
