Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93D7255DE85
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:29:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233306AbiF0JQJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 05:16:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233220AbiF0JQJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 05:16:09 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30C0F2DE7
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:04 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id ay16so17782146ejb.6
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=QSv6xQ8WCWyYpbNh9MlnIWdHbx051KDSUBuTE6Wgst8=;
        b=b00vrVmrXxj36/zstZp722l6sKh/Y7VqFRVlNrJHgiZPk5qqgr0Go6f/XgwMUrB+mV
         h8Z3ps6lZj5hSXBkYZ5uAUbLKwu8x9mlambgUe/ozy9iH0vTZuSpMHhJrRDshZ75F9Hi
         vnH2GaNb8nBbrwVPvMFNU3usHcfyBM70/Rj9Wjgf7J06pQU2WTPWn/9OvyWpVQ19RNHm
         YYisNowTOwpcUcDI5VZrnEqKyVQP2L5bC0jPLEt9QDG5WQfqTlPaDP7zcyWBeZocr+40
         Mdu8LSKp8cItKsu7cKiuxD4RVmIXP3wRjQS+r1TYoJaoxG5LmuZS3aItpiNpwhpk2Uj6
         tw2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QSv6xQ8WCWyYpbNh9MlnIWdHbx051KDSUBuTE6Wgst8=;
        b=YgCAv/S/1K7efpqCimarFCycUG1OIxOY0paW3povt1oHX/LKLWeIYMh28lBZ1eUS4s
         8jGQdsQYDlC0IXklqb5QfTNiI8O/K7O+qgvr0l478MrUB6bEvfWGqkM2aTxWYZ4FgcsW
         bMrPl0c+t/AjIIK1cXPe8XxlaSisgYmUMhVASg3LKoLET+mQKeGwoiyHbs15O6V56LVH
         dwlwch5hxW356GMSwkaPj5t1hzx+W8YWvgnmV7x5wfStyEzVzodkBAb5/dczz2TdTlGd
         fgKlsBB9qYYjpBP+aMjBoXFq3DOt7PuffikmZSRmqBeQOYD/cEact1K05URqd4oIgdlb
         rhMg==
X-Gm-Message-State: AJIora83l40JuUoCQqmurwu73CxQpE/KSgWAmiSTfSPH1rxD7gReYzvS
        9cE4EZTbZPXyiDYdPkOjf4SnAQ==
X-Google-Smtp-Source: AGRyM1skpry58hKIWk5E212f9OqDipMQc1zah2fbDJhA655IB0+JwOFCmlO9bu+OoK/xJ5ECN24HEA==
X-Received: by 2002:a17:906:db:b0:718:d986:d3d7 with SMTP id 27-20020a17090600db00b00718d986d3d7mr11775858eji.532.1656321363245;
        Mon, 27 Jun 2022 02:16:03 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gy10-20020a170906f24a00b006f3ef214e2csm4805395ejb.146.2022.06.27.02.16.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 02:16:02 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     soc@kernel.org, robh+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, agross@kernel.org,
        krzysztof.kozlowski@linaro.org, Arnd Bergmann <arnd@arndb.de>,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        arm@kernel.org, bjorn.andersson@linaro.org, olof@lixom.net
Subject: Re: (subset) [PATCH 1/2] arm64: dts: qcom: adjust whitespace around '='
Date:   Mon, 27 Jun 2022 11:15:39 +0200
Message-Id: <165632135503.81841.18219351379301079402.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526204248.832139-1-krzysztof.kozlowski@linaro.org>
References: <20220526204248.832139-1-krzysztof.kozlowski@linaro.org>
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

On Thu, 26 May 2022 22:42:47 +0200, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).
> 
> 

Applied, thanks!

[1/2] arm64: dts: qcom: adjust whitespace around '='
      https://git.kernel.org/krzk/linux/c/603d2d30bfefc2c5c1abdc2bab0256ffa9ffe3ca

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
