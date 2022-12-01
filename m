Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57B9363F5E6
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 18:06:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229995AbiLARGu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 12:06:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229984AbiLARGt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 12:06:49 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23652A322F
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 09:06:48 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id p8so3410848lfu.11
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 09:06:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tPtYrTXjoolpTb2T6aXM4GSHL/Fb//Vn5ys+ZBYg1r0=;
        b=LM7qfcz4UK+YhOdITjMjGNEpvBPlu7nj8ExQ48llPL/uugdrDem3DxRT6FpQGbTPbO
         YpjmXSxZTzzmMZD5mzY3N7FoDOjuGD+K4XqpMtD+GufDvTrVg4ufpGymvanvZzFq466B
         MWPUdFB48NLs6F/w+VSCHS+jQY/xpfzc9eXDcjrMxiatVKt3uMd+DtaC9rwntdQAAiYQ
         iowwO4lWYLpBUUhmXMR64m8PRGeifCvH11niSHqHrkDDB7O+b6WOE+g75sgbk57z/2Ii
         XKvtkrOqcTwxaRkzyCoYjpcoeFO5ywH9JikuSHP+EwSq3kbl0AESfNIknXWieAxtiP5G
         7mWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tPtYrTXjoolpTb2T6aXM4GSHL/Fb//Vn5ys+ZBYg1r0=;
        b=x2KfOYndrPmjF06Je9GL0+whvZCZJuvV5l96ke+yl3DpLmJfUXBkwzcPTHfzD5VdjR
         /f9TQnO0T7ikgERQeCnN/l5PdhmrBgS9P+jCATinSdtLBj0YR5hT1bdGo6hjlv75Lq/U
         EAB/+5mhnyn3jjNTJC1qxiKos8oYLszV67W5P73InfyUvjIFzem9MXJvy50YGKYabHZb
         fxOYMtOG4eNVE4scqodTk5sQ5DPpVWgZbnFMVI01SjJUWmZArEqR4DXaXyK7x6xswTpb
         azOoL7K50NfVnii0BC/cj9ZaQLyqdkz3rMHFXnCpGGY1gg8Iqe2Anfj1XFCDxRI4fZ9a
         Fkfg==
X-Gm-Message-State: ANoB5pnUiBYr3pSqkxSkViXyvDkAm3w28EB4PfYnaepPLokhgVID8zGn
        2OsrqlaEnnKqhfTHWi93aHdiak2MBkQFaqCb
X-Google-Smtp-Source: AA0mqf4WgUZETCsTDwtO0aAo9j/LBskomgNqXZj5ST3HDNZbWNPmQr+Kh9tI5CW7eHR0NsNiZh+28Q==
X-Received: by 2002:ac2:4845:0:b0:4b5:3e54:96c2 with SMTP id 5-20020ac24845000000b004b53e5496c2mr1753085lfy.71.1669914406266;
        Thu, 01 Dec 2022 09:06:46 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q9-20020ac25fc9000000b004b40f5e7336sm703659lfg.199.2022.12.01.09.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:06:45 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Patrice Chotard <patrice.chotard@foss.st.com>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH] ARM: dts: sti: align LED node names with dtschema
Date:   Thu,  1 Dec 2022 18:06:40 +0100
Message-Id: <166991439955.130674.14482849305569719971.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221125144116.476877-1-krzysztof.kozlowski@linaro.org>
References: <20221125144116.476877-1-krzysztof.kozlowski@linaro.org>
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

On Fri, 25 Nov 2022 15:41:16 +0100, Krzysztof Kozlowski wrote:
> The node names should be generic and DT schema expects certain pattern:
> 
>   stih407-b2120.dtb: leds: 'green', 'red' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
> 
> 

Applied, thanks!

[1/1] ARM: dts: sti: align LED node names with dtschema
      https://git.kernel.org/krzk/linux-dt/c/91bf30a42b16257f98345c9ba519d72babbbaf8a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
