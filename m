Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3119C576FC5
	for <lists+devicetree@lfdr.de>; Sat, 16 Jul 2022 17:19:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231963AbiGPPTW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jul 2022 11:19:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231799AbiGPPTU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Jul 2022 11:19:20 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 792051EC61
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 08:19:17 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id g20-20020a9d6a14000000b0061c84e679f5so2983664otn.2
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 08:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7IgaFb4FuhRx2DxLavmw65rYTf7cmqiILZlTWEaX0uw=;
        b=YiRFxedf5o0JAN7h35Ykz3sdcJq65iup8DS/ypasexgM2ice+9opoG5LhTg1tkiA+p
         YfCGWcPTXOqheW3wnT34IUzaagwvSL4sDWdRmMexRXFaNaB4rcNZO0Wiu8HORKhvdrGq
         7xmK7iCxepY+tQvnCemcqhRt4m0mfqhbLKi7Dh6zqLpT0C64an0OL5XjpgGnLR5itKZK
         28zr+4Lu4et+ma0gES470SYR5r9RSOSuwYNBmFSLbQVgMAofOiwvmdb8x7Ec63WJUKEa
         LI7/OBTsblwDNgqkqWk5O/zyOR/b+9QSfoyfuEYncOz9tIoQK38Jfivrm2J/ApYtsjre
         hbKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7IgaFb4FuhRx2DxLavmw65rYTf7cmqiILZlTWEaX0uw=;
        b=mp5VjtZJyMKrChZ7xwLxlbNBLE58xV1sUXmauNQyABeXO01Pg/wtRTCqaoXySKNAc5
         +aLcvV4AMCSNlamA984+EQipP0p3Q1Vyi36/zwSrRTHcvmQ1WU8Exbd4rumuGpAnh46Z
         7MPZz3lxCchDx9YYAowsjbuoE36NFbH2WuHPkv6jqm+arzGGI0Xvn76/KtNXhWd74TzW
         5jtwt8UfUE+gkcDZKLCttCU3W3eD/ioz+vSavjKfcCxUQItJnURsZsfJd57wL/PX6AQW
         smJcNB8KsWbivtslOQFQ3AnGcUQtMah8n3nhtbWun5Wb8Vbwx+qO780ufAYzA7lcyAKK
         7tmw==
X-Gm-Message-State: AJIora8NcIfKKl9MsS5tLkcUf5br2iTzEurU4WUxycpkrlYO63in8PBp
        pW5X8vQSg673iJ1tOxjXpExQtO2P5tBACQ==
X-Google-Smtp-Source: AGRyM1vg6GXMhEmqUeh2b3amDDKy/lsMBhtNlC0nQjbHSfJeSNilFGk40KPo8kd2tRRMpoBcLnhlJg==
X-Received: by 2002:a05:6830:d8b:b0:616:97ed:18e5 with SMTP id bv11-20020a0568300d8b00b0061697ed18e5mr7862710otb.42.1657984756552;
        Sat, 16 Jul 2022 08:19:16 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m21-20020a4ad515000000b00425beedad70sm3035254oos.32.2022.07.16.08.19.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Jul 2022 08:19:16 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>,
        Steve Capper <Steve.Capper@arm.com>
Subject: Re: (subset) [PATCH] arm64: dts: qcom: sc8280xp: Fix PMU interrupt
Date:   Sat, 16 Jul 2022 10:18:59 -0500
Message-Id: <165798474064.1679948.7724056255828690391.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220713143429.22624-1-manivannan.sadhasivam@linaro.org>
References: <20220713143429.22624-1-manivannan.sadhasivam@linaro.org>
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

On Wed, 13 Jul 2022 20:04:29 +0530, Manivannan Sadhasivam wrote:
> PPI interrupt should be 7 for the PMU.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sc8280xp: Fix PMU interrupt
      commit: 39aa5646adae386719100e9e555a40e9db7bc4a2

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
