Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E1B755B140
	for <lists+devicetree@lfdr.de>; Sun, 26 Jun 2022 12:42:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234263AbiFZKgV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Jun 2022 06:36:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234259AbiFZKgU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Jun 2022 06:36:20 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 016BD12774
        for <devicetree@vger.kernel.org>; Sun, 26 Jun 2022 03:36:19 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id q6so13257288eji.13
        for <devicetree@vger.kernel.org>; Sun, 26 Jun 2022 03:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/KOGP9jELmtiwr0N4d0KhuY//bqDOGVF37th/t1CLEc=;
        b=c9k+2kBBz3UPPDy153Zqn5YLgmmzCvWAx5s0bmqNurg0OpWm5fMwHhi0y2l5k8FhY8
         R4OKjAkq+/OKojaWSfaUlIWG/gFJCYVt8/QcgX5bWHENFFesScVVvKi3Z3yCfuP3jUN4
         howve+/5fXJ1d5LjbvzvsQPa0xkRqXFj8bI0Z4dXRM0bsCI1iCK/VTeLo8b/bO4z/MDr
         MUYVnwQiJB3uMsG/S2t0k4zVR9frhQxOPR/LEFfO9DwQDtZMut0G5Ia9YYNe7CDW45zO
         03Eo7BEl+6uOix+WhqpQbp8t9n+U8YrEDs75LnV2hwUzk7FCRgV2Wsd2bYXjpk7rglFt
         xAWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/KOGP9jELmtiwr0N4d0KhuY//bqDOGVF37th/t1CLEc=;
        b=xDnPEJJaEz2Rz+BdyapxZCPVzdqZQBEbSt4E27V8DdiqGkVcf+UnT2u90qAasWyPoH
         eB2SdSDYl4+UjvjSTrskVwcKMTaSEQbOtjNp64GdatITyb1PjmRbhsiJYa+hshd0SH0M
         HoLUFIo6JcgSFG0DRQny4wzszn7U24nKizJ3fuZcwM9K36ccONuv6KsqjlUO+jWz/zPc
         RxBG+xLep4CGoxh77MtX/6sTKRujFDOuaTujEAVBr82ZqCDWEwWJe+T1S3O7FFboLYOn
         3gxXe3edhOwMTbbQ2Rl3Ii6OJ/FX3eVIJ4MhCRTId6pqfsxkH5SQBjfC2PCTl7bE03bK
         4AWQ==
X-Gm-Message-State: AJIora9GeM46+00d1CKYCfOn7OtDeAO1l6GhfLSpnRELEHJBw7YzUjms
        eE426ZZzy4X8AHnKdNFHel1WRw==
X-Google-Smtp-Source: AGRyM1tgawZLer3hzJeLKf6LM8wmjjs2sRb71tDoP2t9+PZad8dfYMUiHALgBJhdp/iOHGqpoDxK5Q==
X-Received: by 2002:a17:907:8a13:b0:707:194c:30df with SMTP id sc19-20020a1709078a1300b00707194c30dfmr7675177ejc.154.1656239777590;
        Sun, 26 Jun 2022 03:36:17 -0700 (PDT)
Received: from [192.168.0.239] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id q21-20020aa7d455000000b0042fb3badd48sm5673595edr.9.2022.06.26.03.36.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jun 2022 03:36:17 -0700 (PDT)
Message-ID: <e14c6be5-1815-3c6b-2f41-3d00c4888f64@linaro.org>
Date:   Sun, 26 Jun 2022 12:36:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH V10 1/3] dt-bindings: rtc: zynqmp: Add clock information
Content-Language: en-US
To:     Srinivas Neeli <srinivas.neeli@xilinx.com>, a.zummo@towertech.it,
        alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        srinivas.neeli@amd.com, neelisrinivas18@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, michal.simek@xilinx.com,
        sgoud@xilinx.com, shubhraj@xilinx.com
Cc:     devicetree@vger.kernel.org, linux-rtc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        git@amd.com, git@xilinx.com, Rob Herring <robh@kernel.org>
References: <20220626070817.3780977-1-srinivas.neeli@xilinx.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220626070817.3780977-1-srinivas.neeli@xilinx.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/06/2022 09:08, Srinivas Neeli wrote:
> Added clock information and deprecated calibration support.
> 
> Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> Changes in V10:
> -resolved dt_check error.
> Changes in V9:


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
