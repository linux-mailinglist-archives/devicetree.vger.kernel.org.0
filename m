Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC02655DAE3
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:23:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240778AbiF0UDi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 16:03:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240848AbiF0UD1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 16:03:27 -0400
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7739A1A806
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:26 -0700 (PDT)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-101cdfddfacso14302319fac.7
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Aon9KWNqlTPJUCEzfiiGPiFzQemxxhc4mveTBdeN0mQ=;
        b=bgLsaloJiLF+jGaYy/5nmCIMlKh5WIQB1EG2jQ7fBkV+u6ZUjB/p8TIAjMt8rKmV7Y
         /sDvbDNejmE9n0B9iJtR+FlGtvZ+HLgS3KlUXrE8RXckTFHv2jBq81yv7uiBRNwc+iQ3
         0n8NaW0iXrrs4HS/OWgeBqzUNcKS1LQCdiyOFr0Q1p9MBeRtTwEBHxJvNFXk2MZf0+g9
         1em7z2T6w3DR93zgE+Bg+oG4MGyZQq/jN1qYU9r8KlHgs2ZoTQ4zhz23U7N0Dv3c5sCK
         Ex9pWzzqSQCYtn8M1J0zPMXnIZv9okBdAAbTsSXU9Ut409bWog5+k0Y0oJNbhRb3DCVl
         YdIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Aon9KWNqlTPJUCEzfiiGPiFzQemxxhc4mveTBdeN0mQ=;
        b=VZgJVhUrifUkY7dJ4X5L+AJCRUmqFa1mqqPS3qBMT9zvwOjXloLJVhn1RXjVw7LEpw
         fepF0dWGI5z6yQ4eteaOwwvsSsXJ3l5kvC2yZuhmUYyiaHFDYvTTmjtJMM16unq/drkg
         K2nQ2dshQ4HxePMpoT/tj1rOobLvSeXsn47KmH80q+oqvDPuYvJodb3lcrNS9np3TTvI
         QH0OCMSUjXch80S07KDFBu6OMLluSbhy5aKyiJg5Kq9TiP5nZjZRc2Oby/ljRFUQC0Y2
         Bhmf8giccbqaj2glr5iWtr3DgiR5RT4f5aRInK12Ofn/TSiYf7luVKzVGwrgmlcmJ7f5
         Og0g==
X-Gm-Message-State: AJIora+H3No8uvx7KMClAZQZd7XOIWQUPOM1gsQrY++mtvNV+CH5a54s
        Edo1RlIYF9yOMba5OzJIaAzb4Q==
X-Google-Smtp-Source: AGRyM1tYwpVrLTOek08Oo6ZIoPaPI9ZE8y8ATJCqHorh5n/D6KeaTSUlWZHlXy1t5+Eh+L/Rqf+j+g==
X-Received: by 2002:a05:6870:f616:b0:f2:dac0:e339 with SMTP id ek22-20020a056870f61600b000f2dac0e339mr11622237oab.116.1656360205558;
        Mon, 27 Jun 2022 13:03:25 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m16-20020a4a9510000000b0041bdf977c6dsm6428729ooi.31.2022.06.27.13.03.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 13:03:24 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        devicetree@vger.kernel.org, Taniya Das <quic_tdas@quicinc.com>
Subject: Re: (subset) [PATCH] arm64: dts: qcom: sdm845: use dispcc AHB clock for mdss node
Date:   Mon, 27 Jun 2022 15:02:45 -0500
Message-Id: <165636016349.3080661.3240629203212471824.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220531124735.1165582-1-dmitry.baryshkov@linaro.org>
References: <20220531124735.1165582-1-dmitry.baryshkov@linaro.org>
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

On Tue, 31 May 2022 15:47:35 +0300, Dmitry Baryshkov wrote:
> It was noticed that on sdm845 after an MDSS suspend/resume cycle the
> driver can not read HW_REV registers properly (they will return 0
> instead). Chaning the "iface" clock from <&gcc GCC_DISP_AHB_CLK> to
> <&dispcc DISP_CC_MDSS_AHB_CLK> fixes the issue.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sdm845: use dispcc AHB clock for mdss node
      commit: 3ba500dee327e0261e728edec8a4f2f563d2760c

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
