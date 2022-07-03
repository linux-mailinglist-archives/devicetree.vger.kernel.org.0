Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0465F564474
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 06:19:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232537AbiGCD6e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jul 2022 23:58:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232372AbiGCD55 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:57:57 -0400
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5C26B1FD
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:28 -0700 (PDT)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-10be7325c29so1566325fac.0
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=0sEIIBTydmdDA0Ppj3dJOzdqd1kEymErzYo788cMuCY=;
        b=s6Amefn2uPtF7XXO5kSaYYYOeznEDr/Ks7Aj+B8L7WOvCyeeYjQlnr565U5BwTpnXX
         SVqKlcNBX4sB4kVjNHtGtjGxr2xCI88L0y6jj3RM3YbxZKdVOrQS2SkUWccmlEUReqQ7
         rpdujoPpeQk1GjoDKkNVf2F6F2JuibZlBfHlSKZh0bW9jV6k8EPP9be98/9cIZaat7U4
         EPM/9m/pgh0qWNqlKGO34B5n1Wm/hPHSH0I6eqMrCpDNW1snFY5Tb+wDB8NxuLFZZqbM
         jX95M12qjLjglL7zY62H5E6Vc6jqHqJd7q0KXXzL25pQQ5uHA5ublRGvvfGda8L6lHah
         LVUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0sEIIBTydmdDA0Ppj3dJOzdqd1kEymErzYo788cMuCY=;
        b=XxYBhwj6IeCu5tA44bvOV6eVv85LruEHP9daRm5nComRdbUuPyXQlZmq6Z+Wqhqw7n
         mJX9IYWPzWceq26lwlGcbQM/IS2BO7PTp4XrpW8+5/iVAG6vvdwQLN4o+hmUMM0YrDiF
         AuFHDt27pid4qA2FSJ72BFY2Njs6Tb1RMnluf6TVS6vI8aqOpCnui2KGuynumqwRkFpz
         s1N6y2qMJHDz2X9QlVIC33MKiGN0J4h1mcPYYIl/mhPTVfJnirifc+CafbNCGS02dIYr
         GYLoiF1+rvdK2QfKw0XQucQ78MwzPEqrOZbKB2doPTXOwk3AqLRn59NpPcFDFGc2lwgU
         mscg==
X-Gm-Message-State: AJIora9+j7RrgIGRYuUf5fkit+E6sM63XyRHR1/Baaacp2trWLjbVNEM
        tKfu7003S8j2jDee5jiiogav1w==
X-Google-Smtp-Source: AGRyM1uzpBXAGIvH9HjaUWn2sg5+G1VlFD3WaUpo5taL+7xJG7tSoVbciFw3x5jIb0G6c12lWzn4Lw==
X-Received: by 2002:a05:6871:60c:b0:10b:ee7c:2e28 with SMTP id w12-20020a056871060c00b0010bee7c2e28mr746646oan.21.1656820648368;
        Sat, 02 Jul 2022 20:57:28 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:27 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-remoteproc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: (subset) [PATCH v2 00/12] dt-bindings: remoteproc: qcom: cleanups and improvements
Date:   Sat,  2 Jul 2022 22:56:24 -0500
Message-Id: <165682055969.445910.1031457068596684061.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220517070113.18023-1-krzysztof.kozlowski@linaro.org>
References: <20220517070113.18023-1-krzysztof.kozlowski@linaro.org>
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

On Tue, 17 May 2022 09:01:01 +0200, Krzysztof Kozlowski wrote:
> Patches are mostly independent, so they can go via:
> 1. Qualcomm SoC (dt-bindings/soc: + arm64)
> 2. remoteproc (dt-bindings).
> 
> Changes since v1
> ================
> 1. Add review tags
> 2. Patch 8: Remove ref from label (Rob)
> 
> [...]

Applied, thanks!

[09/12] arm64: dts: qcom: ipq6018: add label to remoteproc node
        commit: f0b255b4f012055ab12137ecc1b68dfe12b06107
[10/12] arm64: dts: qcom: sdm630: remove unneeded address/size cells in glink-edge
        commit: dc74f89e3281f9ea5669831db05d56db0555ced2
[11/12] arm64: dts: qcom: sm8350: remove duplicated glink-edge interrupt
        commit: 140488b46b96aed232fc5e911a4455ec6e441177
[12/12] arm64: dts: qcom: sm8450: remove duplicated glink-edge interrupt
        commit: c372baf317f4e10e67b81594cc38607549557a93

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
