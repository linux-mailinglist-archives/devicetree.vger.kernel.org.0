Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E5B1559F41
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 19:26:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232361AbiFXRUe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 13:20:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232366AbiFXRUK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 13:20:10 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 046DC68C4D
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 10:19:34 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id z11so4380277edp.9
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 10:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KS34vGYRSEeom0zBAYcIutCueN9pUJGrVfFONWYZS6I=;
        b=MQpUNRQdH2CMCUcbwB0qvConkQ0Y41WRRGOC1mrEUw9Dc+Sjbe5enP+cumPAVrTUta
         B+L0hqHj5RQsjBSMgV4CGhybdo47EDlRYS4obEZpRzwd3HfVDa3Y7Vba+ZF0qcqQfug5
         o2NeMp7YD0JEJ5/GBVm5lYHwBjXzgpkYuIc6zqMEpWiFBtolOa4APvfnYMwba9JcrQqq
         6sx4bIK6zd/7hxghZEqNNQajIxkpCGl7oE6bbMHN1BtW/cttI4DDeII8LOy6mU2EMYIX
         X4MCTblnDY8ac2pnui+utOl8zKefVGlEhgZZl8Q3ijRsWCeXPKrqnQSz7XsKz8bb6Fq4
         XyVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KS34vGYRSEeom0zBAYcIutCueN9pUJGrVfFONWYZS6I=;
        b=CrsNm2GCu/Ug9UUbR9T2De0q+p/fDz71r6j7KhCj1HQg3iBUv6Q+xBEmGI/vh1zvWF
         TnuUgEMOCmA20ck32mCA0wn0TuVLrwgRtfptT5Zvv1ZqYeWCrMU05xvxUOmR7EXHFOB0
         a2p7JImsQloxr1hVRylZYzCP/zVgnRImzKelzXvudGfzg0XR2s/6JYh6WXXzk1k4OO/F
         Ccpsq+/mJ8nMWZTDy+ZE3FvyiAMAQlEhh65BbxC5y6h9eWAFTH3shAvRuC63kgjNf/LW
         uH1LKdQvK7iFXYHFQN2yq2r6OzGzbfNh4eYZ+1Yo0qsNtgZoizg1eSqEGXoQB4DNvPsV
         y65A==
X-Gm-Message-State: AJIora/z99djUFCZnGS3NvNK7E5qn1Cwhv+qXZZ3z+d7AgsPSdi1NUSh
        lZjhBup0uPYmAdesvgVSQ3Huog==
X-Google-Smtp-Source: AGRyM1sy0G4UxBbA4d5YsqvS5law/GMKQEGgXv43hk/UUfo4dMXlTbf3wk4hUoOrGV/kkymXUz9C8Q==
X-Received: by 2002:aa7:c6d9:0:b0:435:706a:4578 with SMTP id b25-20020aa7c6d9000000b00435706a4578mr196157eds.24.1656091173189;
        Fri, 24 Jun 2022 10:19:33 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i24-20020a170906251800b007262a1c8d20sm1445456ejb.19.2022.06.24.10.19.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jun 2022 10:19:32 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     gregkh@linuxfoundation.org, mpe@ellerman.id.au,
        abrodkin@synopsys.com, agross@kernel.org, robh@kernel.org,
        vz@mleia.com, Sergey.Semin@baikalelectronics.ru,
        bjorn.andersson@linaro.org, linux-usb@vger.kernel.org,
        balbi@kernel.org, vgupta@synopsys.com, krzk@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        patrice.chotard@st.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, paulus@samba.org,
        linux-arm-kernel@lists.infradead.org, fancer.lancer@gmail.com,
        linux-snps-arc@lists.infradead.org, linux-kernel@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, benh@kernel.crashing.org,
        khuong@os.amperecomputing.com
Subject: Re: (subset) [PATCH RESEND v9 2/5] arm: dts: lpc18xx: Harmonize EHCI/OHCI DT nodes name
Date:   Fri, 24 Jun 2022 19:19:30 +0200
Message-Id: <165609116546.68884.16917167353605359946.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220624141622.7149-3-Sergey.Semin@baikalelectronics.ru>
References: <20220624141622.7149-1-Sergey.Semin@baikalelectronics.ru> <20220624141622.7149-3-Sergey.Semin@baikalelectronics.ru>
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

On Fri, 24 Jun 2022 17:16:18 +0300, Serge Semin wrote:
> In accordance with the Generic EHCI/OHCI bindings the corresponding node
> name is suppose to comply with the Generic USB HCD DT schema, which
> requires the USB nodes to have the name acceptable by the regexp:
> "^usb(@.*)?" . Make sure the "generic-ehci" and "generic-ohci"-compatible
> nodes are correctly named.
> 
> 
> [...]

Applied, thanks!

[2/5] arm: dts: lpc18xx: Harmonize EHCI/OHCI DT nodes name
      https://git.kernel.org/krzk/linux/c/986fd5fe55cb369c34a1dc65b1469aac536a6d50

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
