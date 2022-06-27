Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C83255E240
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:35:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238691AbiF0UDT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 16:03:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240794AbiF0UDR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 16:03:17 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 991F119C33
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:16 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id w193so14332572oie.5
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VPBtP8O1NCKFrWC7IwgvW5NewXUbLSOkqLdfABadWfA=;
        b=dMgUYGh2K6cZb8P/yVnlDCfIIBO4RQ5LhVIgqL/WxRpqdgd3G7SCZ5AplYWN4ApqBW
         F9DmVWEYl2Qv3SLwS8kGyroPCMlprCEfzLi/8/1eDVvtU3d6+9JlhzgXj3yFbDa+WYFO
         PMbbZcB1v1730V7ti1bziaPqehnXoEU/MLSO1zO92d2LOpXWzW2XJTVz5PRPLci00xDa
         M7RDAgDR71DkhYG284F8/adT2lqoRsbc9v76ijNfGNiCRm4SsQZqK0jsYzx/hr1grk2J
         mrZPt9QdmYAiVqKAIPl2Ocje3H1+3QBUoRioovdtbZm0oTfpw1eLaPtGas01gTf08Lnf
         M+0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VPBtP8O1NCKFrWC7IwgvW5NewXUbLSOkqLdfABadWfA=;
        b=c7NMLhW1JuAx40lepA05Lr9qnL0w2sn3k5xW+zwbTIg/gWHLXeQgYUUoq1xjlO7tii
         8ZLachQ7B/Vj7ovRkNkePE+3CyFcvaMj0rooUdOifYnNgpbzH2mgLXvrrAb9WhI234KD
         QUbP2gXpwzPu40PPrEIsGZU2UVrNdAaCJvO35kF/wutNyUoFQdL2IN5giZeldVNC/Yo7
         1p0HeQnUepgZ6rmc2WIyF0CJ6+rrlLdPmpeu0gMJhGWXB3vm6SplrTiA0gzKo0JyDWFR
         Pe1K16lbvXkVAH8v0ANIlyShDYQp9LuHghWAMMWuxrsuwEWEpJcpgc/siaDmgZdehu0O
         153A==
X-Gm-Message-State: AJIora8pWo8kYmxzIbzCaO9fcb9JuVVqwVCqK5BIQ4oNQs36hMmwHgxw
        8MYT3pQfqQXX78/+m/Q3blGe9g==
X-Google-Smtp-Source: AGRyM1vDmJmYyWM+kHHBQQayL5p1IvECtpBdyHBZN+PEmWbH8Oe2DldM+0bzJ28PnxHnyrlC/qP9cA==
X-Received: by 2002:a05:6808:f12:b0:32f:7be5:9d5a with SMTP id m18-20020a0568080f1200b0032f7be59d5amr12135239oiw.150.1656360195862;
        Mon, 27 Jun 2022 13:03:15 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m16-20020a4a9510000000b0041bdf977c6dsm6428729ooi.31.2022.06.27.13.03.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 13:03:15 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        mka@chromium.org, swboyd@chromium.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Gross <agross@kernel.org>
Subject: Re: (subset) [PATCH] arm64: dts: qcom: sc7280: Set SPI flash to 50 MHz for herobrine boards
Date:   Mon, 27 Jun 2022 15:02:37 -0500
Message-Id: <165636016348.3080661.18047211127885086217.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505161425.1.Icf6f3796d2fa122b4c0566d9317b461bfbc24b7f@changeid>
References: <20220505161425.1.Icf6f3796d2fa122b4c0566d9317b461bfbc24b7f@changeid>
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

On Thu, 5 May 2022 16:14:30 -0700, Douglas Anderson wrote:
> sc7280-herobrine based boards are specced to be able to access their
> SPI flash at 50 MHz with the drive strength of the pins set at 8. The
> drive strength is already set to 8 in "sc7280-herobrine.dtsi", so
> let's bump up the clock. The matching firmware change for this is at:
> 
> https://review.coreboot.org/c/coreboot/+/63948
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: sc7280: Set SPI flash to 50 MHz for herobrine boards
      commit: d756a0b29f4013badc9d3b4ee7c24d4a700cbac9

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
