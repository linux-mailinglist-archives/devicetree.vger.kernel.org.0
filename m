Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A966B5643CA
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 05:57:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231382AbiGCD5O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jul 2022 23:57:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231283AbiGCD5L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:57:11 -0400
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97F6CB1EA
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:09 -0700 (PDT)
Received: by mail-oi1-x22d.google.com with SMTP id w193so8945200oie.5
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LhPnorymh1jvOB7TuRgrf27dj9dMZpl5MtOAOoxse7Q=;
        b=eEiwobWbp3rB79bESggf6L8eZjsRwL5Kfh0BeylWl2sFwzRtP5Fu4yAcchqMcbm7h1
         O5qniSz0j7QPaQKXyr+nKFXFy2aKRg4dyyzrmcIm4snTK8HU65MnX0xIfWeHXEvL7Urn
         TE7CWRXd/EeTsMh1JEugP0+y9140ZfcZlGrHFsGmVbkZzZD1Odm5SrnwwefyfijDtkSY
         39Od2PlpdDjT2k0K3BGe/K++Vj0daNa1EEAEmCIUUtLGca71BpxnAGAXloxnAuUojkUp
         mOwIGJPVzCIfWTzM5fwEp+h0Y9iFo4dU3TKltahDym0eqwV4n3/8uZZpFYR7k6SsAOl4
         Mcqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LhPnorymh1jvOB7TuRgrf27dj9dMZpl5MtOAOoxse7Q=;
        b=yFg0bmCPPJxrAFhrhDKAeOooMY2noknrCihQjQ5oJhZW265ifZqYDhZ0LduCyQFX0h
         Qy6fbZUUFXjgASFSGceKPB1Z5IWSgDdQrlCU59QwPQSEOkrdZIqnGNSYpKiVQf3/s2Ez
         V0YDVTbimbEuLXRPlxOo+mhSgEu/5i2Z0/lOjkMt3b3ZptLE1GbEmDJY+tirNg5ucPwo
         UhvDYknQWdFj2E6Ra8K1c6Bsbqm8NymrUtS6cm0ZTd/NFhpnk/EAAirsG+XqmC0a8Pro
         lMA4j2Mz8QxQ2sqrxluD6sIHKxotqo960tLPiahgUAnDJRbtoXQz8bHF/g7AyiqCOQlw
         /9yA==
X-Gm-Message-State: AJIora86AXc+g5rAMckf/FWEdsorEmDcS9tO3LDJoKXRv60jID2SCR1P
        E0EQAz6gtm320LmtgoanjnVoP16ywjXn0Q==
X-Google-Smtp-Source: AGRyM1uiQEQpmXE7A4Lmwz5n9N1cJ6ML0u9fvD79JZTeeTOg6S9eoryUgxyktPz3gR/qdNIonRmiOQ==
X-Received: by 2002:a05:6808:14c4:b0:337:a9d2:404c with SMTP id f4-20020a05680814c400b00337a9d2404cmr3405112oiw.146.1656820629317;
        Sat, 02 Jul 2022 20:57:09 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:08 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org
Subject: Re: (subset) [PATCH] arm64: dts: qcom: msm8996: add second DSI interface
Date:   Sat,  2 Jul 2022 22:56:05 -0500
Message-Id: <165682055972.445910.896659081667687802.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220617103652.606250-1-dmitry.baryshkov@linaro.org>
References: <20220617103652.606250-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 17 Jun 2022 13:36:52 +0300, Dmitry Baryshkov wrote:
> Add device nodes for the DSI1, second DSI interface found on
> MSM8996/APQ8096 platforms. For example on db820c it is routed to the
> secondary HS expansion connector.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: msm8996: add second DSI interface
      commit: 2752bb7d9b58accbaa15bcfc50de0e41e84990d5

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
