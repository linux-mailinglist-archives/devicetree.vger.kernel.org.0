Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 446E6564422
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 06:19:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232948AbiGCEAZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jul 2022 00:00:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232760AbiGCD7d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:59:33 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8EEFB7E9
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:56 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id 73-20020a9d084f000000b00616b04c7656so5096983oty.3
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=3zOZ3MqII0KFFAaZDDfenhVGfFMiJvrgl8/5EMBW7ag=;
        b=ymGG0NtxJGLg+zYyz2dizigpt7wbO92E0cPUiz6lAy1jgaZImJDim+nrcSaHWoW1qS
         U3uxyNseVPqt+EYxGHwBHYTeghw5souXkj8UcRC1Mv4vGkTgKxGfvM53Hphh6IWHghnQ
         Bu6Paw7Wyymd0S4dpHdRahb6WGP1wQzEBwLkvjtYSLYhY4YexH39oEXT66DQxByjNqOO
         2dBL/9Ecj+oRW9KlUXdwp+5akfdoNJFTGLi+V40wslYIYaYxgbMsLJfKxs8842uIAzJe
         aWD8/MKJfyYSRW41Raq/SUCwOkGAfjD/BBpNHjP0YmGR4FhLUPzL5IWu1XEhNVcg4BsL
         jSnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3zOZ3MqII0KFFAaZDDfenhVGfFMiJvrgl8/5EMBW7ag=;
        b=GesYzyuaMju5yLeV4YWEdY1kL/Ldz+KyZgjsayDntSXPSpzVFKWdETzpGmLE3BhQb4
         dWwq8dqT11psf9ZJS44T3iErrFL4fjrm3K3cdVTDaYWJCkTAwg/nI5Ozd2t1Jg24MdRB
         fPpD7yqAGNAOhUdRbaBCDOu+vxEcauTHO1nBTDECqKRsXIYl0YJ4Z8XxPc28Im8Da0dt
         4PtA6+If1mmwT97gWRU+Ef+Gz6h5aJfkEPDoZL6WFsTjRLvZOAia2R7PfsqtlOWGZ/PQ
         t4CYetRhPjJwUHsCz3GaJ915DgP4TZg+3xFvPHOo8sX8Zw/gIF+a98puIen8OB2Q9iiX
         dDLQ==
X-Gm-Message-State: AJIora9N14LGh8noLOkNF+lAcUZ6nhs7l50jZ43ypSqnbSCQYgtNQuxk
        xb1bzU3LDz2SCdmjinYB3ksVaQ==
X-Google-Smtp-Source: AGRyM1tJm9MRWLcwix3aIIM9a6BsLKemQcEA+nfhwm8Q8ppVumFlVJVYRq/gMcItgD/u87lt+IHgLA==
X-Received: by 2002:a05:6830:40a8:b0:616:ac1a:8d3f with SMTP id x40-20020a05683040a800b00616ac1a8d3fmr9764179ott.384.1656820676512;
        Sat, 02 Jul 2022 20:57:56 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:56 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     dmitry.baryshkov@linaro.org, sboyd@kernel.org,
        linux-clk@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, absahu@codeaurora.org,
        tdas@codeaurora.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, agross@kernel.org,
        robh+dt@kernel.org, Robert Marko <robimarko@gmail.com>,
        mturquette@baylibre.com
Subject: Re: (subset) [PATCH v4 11/11] arm64: dts: ipq8074: add USB power domains
Date:   Sat,  2 Jul 2022 22:56:49 -0500
Message-Id: <165682055969.445910.690711389355959951.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220515210048.483898-11-robimarko@gmail.com>
References: <20220515210048.483898-1-robimarko@gmail.com> <20220515210048.483898-11-robimarko@gmail.com>
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

On Sun, 15 May 2022 23:00:48 +0200, Robert Marko wrote:
> Add USB power domains provided by GCC GDSCs.
> Add the required #power-domain-cells to the GCC as well.
> 
> 

Applied, thanks!

[11/11] arm64: dts: ipq8074: add USB power domains
        commit: 8bbda511a3d93be7b24b666dc0820cdbea4fbf37

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
