Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CAB64F6713
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:39:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239332AbiDFRfE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:35:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239155AbiDFRev (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:34:51 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D81C2364CB
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 08:41:43 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id bh17so5094030ejb.8
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 08:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IVumMDZqt2rwjHo8Qk+yTSY8rtnOM1vqzCoA3ao9aAM=;
        b=zVB8o3Zgd/cpfJfL0Am7OUu8eY30qJZHoXMN4YADODANvu03uA3vq/LsPdIMNa/cvj
         79Xn5J/zT/yzIdDCay7AJdtG6EbZutctsan0TUjqCkHikSW7F52S0iKdx4w/02av41kC
         C4gcQ/Fgh1bkBZQ6qh33ERwqW6zDcHhVFdso9gKd5oKVrjWiywDbxGSSSEGzGREdn0rP
         XjNwcv6B8qd5UnsvcNNgD04AYyeUw90W0QPIgXJaY5JSJ/cyE2bJGtdKSwOvW9tGtEqA
         h0HUtmo83SzZLEgBjOqw7TT0xqlli4KUKMepZjsNRzH3PPc83PeU5gq+YBrU/bUXF3SZ
         vV7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IVumMDZqt2rwjHo8Qk+yTSY8rtnOM1vqzCoA3ao9aAM=;
        b=0RaH3oI5ijCqVihlT1o+3lvFIQZnmED911PoewLMm3pCAH+IyvnrrnW2kIJURPymcw
         mZCx7UNfoyR9kETyDjg0YJtOg2smQyoX51B1Dj6IJVHOBalzw+/sjqVf2QCxD0DLV2Bu
         xdOiiqfk3wXLVmlIaLWYFanI4JAjrZXeagABK3qfw8GX2SksL7Hi8OmpcB4dmUD9CXEP
         fmEhdnhBSX0Gh+lSs2g2LVwTFgT53b+Mz3yLwHJuPwZDMsP4UXOCYF2U7AqYWjtrSvcN
         J4b6lmXxthj2V3c5DXIkvX2Co7QENKQcD8MMVhKmoBYfZluEnk3+86knGk4VtpV8YiQW
         yoGQ==
X-Gm-Message-State: AOAM533enawVoi4Aa5J62K3gQVb3WvT+Thd7XEY4wpshaBiwVVSVeyiV
        94N1t3KDYNXvsDQnkNYWZKou3g==
X-Google-Smtp-Source: ABdhPJxrUbKHbP58C1B/fd6ArkIlovyAlC3CUwhuPi3IERJe3tFXIzQsIIQmlOGhmyi2L62wj78X5w==
X-Received: by 2002:a17:906:5d0e:b0:6e0:2cd5:a87c with SMTP id g14-20020a1709065d0e00b006e02cd5a87cmr8930160ejt.708.1649259701557;
        Wed, 06 Apr 2022 08:41:41 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id q16-20020a170906145000b006bdaf981589sm6666260ejc.81.2022.04.06.08.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Apr 2022 08:41:40 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Sam Protsenko <semen.protsenko@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: soc: samsung: usi: refer to dtschema for SPI
Date:   Wed,  6 Apr 2022 17:41:38 +0200
Message-Id: <164925969518.491593.2533491999537917360.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220324134106.103588-1-krzk@kernel.org>
References: <20220324134106.103588-1-krzk@kernel.org>
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

On Thu, 24 Mar 2022 14:41:06 +0100, Krzysztof Kozlowski wrote:
> After adding DT schema for Samsung SPI controller, the Samsung USI
> bindings can reference it directly for proper schema validation.
> 
> 

Applied, thanks!

[1/1] dt-bindings: soc: samsung: usi: refer to dtschema for SPI
      commit: db85474594609fc6f6a37fe5d5001fa9341971ed

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
