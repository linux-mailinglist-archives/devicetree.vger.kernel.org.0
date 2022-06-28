Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A83B55EF50
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 22:24:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232750AbiF1UWO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 16:22:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232282AbiF1UVj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 16:21:39 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B4B0FC8
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 13:19:33 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id cb12-20020a056830618c00b00616b871cef3so8263217otb.5
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 13:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=86x1pCfc8rA3POoegBiHBkAv35qybvdQxmmuFQbL0RY=;
        b=A6HkriEQVjr8xBuNaJxh8JbFRPp03vxUK0kdmszuwswcz3UumF7ltjqYHiPb5zguuv
         kldVj/3VuIudYRuWWPOEGV6Ww2HO28uttd9nIej6BtkFUbARrqboOl5omXaEJDKUcbGu
         NUlwAlhXGlPx/UJp+osIXmBD/cPWvb2j8b7fXR7gLBNBjLVXlkG4ZaFrII8ajmpj0FoY
         /JDZTYHD3BuNjGJlSA6uaDsxtI1x3L7PA3m5oUGeENCqHfD3e4S+97nSMTbF2cYPcIAs
         CiOqVKtC7EX+AM1w0fLIG/zKfFdSdTBYR5rKHSf3kzm/p4JdypB2ck6X1LNCNlgimwK8
         V0fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=86x1pCfc8rA3POoegBiHBkAv35qybvdQxmmuFQbL0RY=;
        b=wc0c53qz04uiFXwxyv929YEMJd2i0WMWtNOwDrg+TPLSnW/F6bbl42ZJ+DvVcJeR2y
         8undyuDabk4Es8Ge5IpA/RV4IBF/cWVOe+rs60cbfETN3KdAcGQtEWTzDSUXLGItHbm3
         bRWiYBGv322kgLCrNj85L6WSWUoXxQoiETjPdh5bYSGHzSiMReaN0fhsIbx2TcwVoL7M
         LwA1VfxltsLcl4SF6ZjAlWoZwRtGetyPSAHmgLWNMQH1QVk31BuwD4IfQJXHk2sl6+p5
         yeTivG5rDGJKjUb2mVcVeD0UFDkHieiYFhZ16Mjua5fM9r8x7E5+H7GqyWBibPB8UZGd
         //5w==
X-Gm-Message-State: AJIora/oVdZRB+8Cu5BiNIjSz9AKXsp+JiYbSaP3rhhKd6tnQ0kFdMCC
        9a3Dz52wODiWRI18aiWVSeafSw==
X-Google-Smtp-Source: AGRyM1v2wSkt8bjJkTtoUzltW4b6g1kt7GztuslhqRHJPErlzBtKH9XduvJ8939ewp16ELTmMuJOQQ==
X-Received: by 2002:a9d:6ac4:0:b0:616:b183:c7e6 with SMTP id m4-20020a9d6ac4000000b00616b183c7e6mr9307839otq.353.1656447572712;
        Tue, 28 Jun 2022 13:19:32 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id a12-20020a056870d60c00b000f30837129esm9536923oaq.55.2022.06.28.13.19.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 13:19:32 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v2] arm64: dts: qcom: align OPP table names with DT schema
Date:   Tue, 28 Jun 2022 15:19:03 -0500
Message-Id: <165644753306.10525.17507331661457165326.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220627093250.84391-1-krzysztof.kozlowski@linaro.org>
References: <20220627093250.84391-1-krzysztof.kozlowski@linaro.org>
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

On Mon, 27 Jun 2022 11:32:50 +0200, Krzysztof Kozlowski wrote:
> DT schema expects names of operating points tables to start with
> "opp-table":
> 
>   ipq6018-cp01-c1.dtb: cpu_opp_table: $nodename:0: 'cpu_opp_table' does not match '^opp-table(-[a-z0-9]+)?$'
> 
> Use hyphens instead of underscores, fix the names to match DT schema or
> remove the prefix entirely when it is not needed.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: align OPP table names with DT schema
      commit: 0e3e654696074b304302c7cc2a67314b7875f1ae

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
