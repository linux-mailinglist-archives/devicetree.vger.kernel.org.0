Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A384250A25F
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 16:29:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244205AbiDUOag (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 10:30:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1389339AbiDUOaY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 10:30:24 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B92293FD9A
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:27:31 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id q129so5789113oif.4
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=d2ljouS/NpyCeddFpyIfjibsWr5AFiZwDxJgcpp7ScU=;
        b=BbpDQvemCdZVqmb7nHXXs3coqPhdk0qtRa4x7/1gBOhP9l4iw9jADHsviJQ7FGmMFh
         lwVjRS9Pt49yI/lahyfPIFslnEHOe5xLFZ7CDJy7VUlmORpJNaIoliyk9zV2+GoYo3f5
         Oj4mRNsDtf0RSyGCTCMWM9ciA1j48YwniEb63nXu9aaYdEEURpQefnAQfONr/L1wSQ5k
         N64GREE5ONZs5NDPX6KI+7EInR87qWSYNzh9iOoHdBpPXCuSWxwB7L8rvMwONVTo1w7G
         Gu53muN8Wb02OHUF9cLwwyiM3rCj0lCyqG0/2wlpSwXV/R5iFljrYdVovGWXZRWM1ymL
         5Elw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=d2ljouS/NpyCeddFpyIfjibsWr5AFiZwDxJgcpp7ScU=;
        b=CTucni0aX8Wz3EZ749+MOqpYAv1Q03GqYMXg+8+y9UtJc7c0w1MWxtvD4aApXsCej9
         v8WRDHfWiCL5qVR5BMbEzhrzRHP1a1OUYActodQwNYmqZyyKO3DZoqhl1ce0lQL/3S8O
         krBI/8kXCG1iPqqaEoUIrqob750Y2wdg9Xba6poAyteyRP+sYypCc2VtZBlNxQYKjly7
         JN63axr4hXMz9OhNHERgc3qBJ8QXyx3mWSbn2oFlohdwGO/ev62PNUEN8VyMG7zO2gqQ
         qvoWkdB53d1LsZAEcvC3rUf68XqzungR5GVzEU2OGkk3RoCzXyUalRig08rn5nLWploW
         Tcqw==
X-Gm-Message-State: AOAM533ubDrrX5Wc7Wt/OFHuYHEiJehRFZU8prOLbvcC5r11+uxDvx3q
        slJlE8V8Fzcyk5t66vqQSOA3Jg==
X-Google-Smtp-Source: ABdhPJx88FVVrMymF5gKvcCBYCUtPX/ISFPeHlaE7O//hDUPNqrMeGTrMmybmJEhcEkrBXUAUv+EXA==
X-Received: by 2002:a05:6808:23d1:b0:322:97f8:69d7 with SMTP id bq17-20020a05680823d100b0032297f869d7mr4348215oib.241.1650551250958;
        Thu, 21 Apr 2022 07:27:30 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id s14-20020a0568302a8e00b006054e841915sm4296295otu.73.2022.04.21.07.27.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 07:27:30 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Mukesh Savaliya <msavaliy@codeaurora.org>,
        Kuldeep Singh <singh.kuldeep87k@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Akash Asthana <akashast@codeaurora.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org
Subject: Re: (subset) [PATCH v2 2/4] dt-bindings: qcom: geni-se: Update I2C schema reference
Date:   Thu, 21 Apr 2022 09:27:06 -0500
Message-Id: <165055095990.2574292.2416504278084349472.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220404182938.29492-3-singh.kuldeep87k@gmail.com>
References: <20220404182938.29492-1-singh.kuldeep87k@gmail.com> <20220404182938.29492-3-singh.kuldeep87k@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 4 Apr 2022 23:59:35 +0530, Kuldeep Singh wrote:
> We now have geni based QUP I2C controller binding in place as
> dt-bindigs/i2c/qcom,i2c-geni-qcom.yaml similar to other controllers,
> update reference in parent schema and while at it, also remove
> properties defined for the controller from common wrapper.
> 
> 

Applied, thanks!

[2/4] dt-bindings: qcom: geni-se: Update I2C schema reference
      commit: fcf2c0f7cbcad29f1decb88567e54c2451b60ba5

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
