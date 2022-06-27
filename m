Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C18B755C926
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 14:56:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240987AbiF0UD4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 16:03:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240911AbiF0UDl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 16:03:41 -0400
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com [IPv6:2607:f8b0:4864:20::c2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5FA81AD9C
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:39 -0700 (PDT)
Received: by mail-oo1-xc2d.google.com with SMTP id h12-20020a4aa28c000000b00425ab778155so387140ool.2
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kg9Lplck6C1OMqSfFDk+G4buDHgPZV23JpoAqicydy0=;
        b=NonGnbSoNI1BC87eY6LKkuQ7kCQUp2Jd1xDjR/w+nrJRBAmPA7j/aNWx5fChsczAVw
         BX0eYT87O2ioJueR2lzpfLGQb7eU2B+bBgSsn/A3gH7QY8lruzBl2lRV/IVFFLYq0FI0
         sHYOWh5fZ+tRstalFzG7mS9iu758EOG1gkC6ziw1YX8eti/4dgveTLQtng7npAoSP1AD
         pn140eYHWthCY6x+MQUwg4cvZQZU9hHBTtiJnr9wNNq2K7PWME/gZiQvO7TzWMEQXb6W
         0S8Ni9A8itSK1VulCt9KQC2Q5oNGMsfSqaxt9S9UVMvNeaw9ibGaVKJSfkPH3gWwD6YB
         gfbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kg9Lplck6C1OMqSfFDk+G4buDHgPZV23JpoAqicydy0=;
        b=SLaGWT7ClYu6XL69ru2Jb5xiVCoRl3Pn3FFW8MzeB5dZKR3xXW5cPtoRwOKTQMuD7q
         LZduQZc67ZFvMsvanKi8uODYyRuWotE+g7SpJelMfQ1hDJbRKSFZQCrUzUr88XJU7EAD
         Ona7dXmqCVh46jc5G84Y3VdUu+CFOsNSaahc3u1EZwyjlL011wT8eeWpf1C6ge0O9ukf
         FO87hFfVmH/sL8erjf4ESoakLGYuVeMW2OuSVtC7YarikgRfWOhdi9qyVhscsXO5SsvL
         SlM9AmKYKEL9gnF26Db/dyXRBvECDMkGlCwSODIaRJG8F/Z26IQfIpCWrPRMOf2fI3pZ
         UQCA==
X-Gm-Message-State: AJIora9tuxwFBjHImHO7qFBRj/XQt0s3c4BtW70wvnyQAbNxPKLiivk6
        ldgyKqtwmIrJYlHURIt+xrMLjQ==
X-Google-Smtp-Source: AGRyM1vxJ8WBOYYFjvttN0XXj2vftx4ZWg8xnp23Pud9EBsHMbFUN2i/tcaFfOEegljMuC5wel7TEg==
X-Received: by 2002:a4a:944c:0:b0:41c:18de:d334 with SMTP id j12-20020a4a944c000000b0041c18ded334mr6498382ooi.4.1656360219008;
        Mon, 27 Jun 2022 13:03:39 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m16-20020a4a9510000000b0041bdf977c6dsm6428729ooi.31.2022.06.27.13.03.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 13:03:38 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Andy Gross <agross@kernel.org>
Cc:     Rob Herring <robh@kernel.org>
Subject: Re: (subset) [PATCH v2] dt-bindings: firmware: document Qualcomm QCS404 and SM6125 SCM
Date:   Mon, 27 Jun 2022 15:02:56 -0500
Message-Id: <165636016349.3080661.7253501335863287391.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220622115109.6724-1-krzysztof.kozlowski@linaro.org>
References: <20220622115109.6724-1-krzysztof.kozlowski@linaro.org>
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

On Wed, 22 Jun 2022 13:51:09 +0200, Krzysztof Kozlowski wrote:
> Document the compatible for Qualcomm QCS404 and SM6125 SCM.
> 
> 

Applied, thanks!

[1/1] dt-bindings: firmware: document Qualcomm QCS404 and SM6125 SCM
      commit: 86b78de5fd4ba550a239dea9cade355fd58efa56

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
