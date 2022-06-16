Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D64154EB7A
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 22:48:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378720AbiFPUsF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 16:48:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378730AbiFPUsB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 16:48:01 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 288E719FBC
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:47:57 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id bo5so2473176pfb.4
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=/pVzaOY9CFepK+i9q4fsrNHrN+dhMEmS2oDBirnD9FA=;
        b=sXCLsno8ay84b56C2dm5p3bQETg7M9Pas9KYTGjIuX9Me6fAlskGNeysmgVYem/U3i
         fd2u5FMpZOWmSr3AxUgDn4E17fAmxLCzduV5BPUXsrj60EL91BCWCj+oZAOM8DtC9OKe
         YWkvX2NyTg713VbdFv/pYFYPb07S4dkqq20gLnMKVCzZruwaStST6V1lOI+oqXEitTaj
         AzEAdZII/WPh0SHoBbu5ql8S4STvvXR9xQZzAHrTRy8Qveis6a7jOQ2D+QPEe6QTAa//
         9XIic3Cow9mjPfXICxFLRDGL0XJ1aOP4XFyL7QvzQMocbW0ydzKHgUmReA4HVaOhhQpY
         UUTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/pVzaOY9CFepK+i9q4fsrNHrN+dhMEmS2oDBirnD9FA=;
        b=QaDqOR+tNAMCRqA+T0YmM7jirrYu/1O3hIsuYnSHm76SfCbyjbAWbl+hT7Blvrfj2u
         nHlzRGcATsq1WWEjAirSK6qlP4Oqy+YAXZNuoaBEOkEo+ZhXSltlJV/J1+7y+lNWloJk
         +13+o25eTnW6n3le+AqzIwpC2044R9VUQufDRA5R3WAiyBiTmbiw0i1xo8JNJvueU8B0
         iQLsKPw6w8PWvANJr5xgjH0EeY9tDNv1Bv2oII6D8Nk3hhqFyID9lcPJJzep8Pd722pa
         9YmH0ikQ25ZaAfiE34lGRARqVHAI1dxbyt6wNmDUi5vqFqd57tTQV0CQkBa85BgbXsFN
         ZTVg==
X-Gm-Message-State: AJIora9/QL5lLB/+mp20pxo//lF7kfLP7fIN2kF7XTTEs9bGBZBX0Uzp
        VnAMlC/buyTJyzKvCsWdDbK3ww==
X-Google-Smtp-Source: AGRyM1ubZjKzAx27pQvmAgugnf7CvSnECablkLbpEMOEjewVkaUyTg3qtr0IuXESsdpX0H6W/VhONg==
X-Received: by 2002:a05:6a00:c88:b0:51c:1001:65f9 with SMTP id a8-20020a056a000c8800b0051c100165f9mr6463419pfv.66.1655412476609;
        Thu, 16 Jun 2022 13:47:56 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id 203-20020a6218d4000000b0051ba0ee30cbsm2165453pfy.128.2022.06.16.13.47.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:47:56 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Olof Johansson <olof@lixom.net>, arm@kernel.org, soc@kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: axm: adjust whitespace around '='
Date:   Thu, 16 Jun 2022 13:47:17 -0700
Message-Id: <165541242280.9040.11932013052748741725.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526204100.831742-1-krzysztof.kozlowski@linaro.org>
References: <20220526204100.831742-1-krzysztof.kozlowski@linaro.org>
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

On Thu, 26 May 2022 22:41:00 +0200, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).
> 
> 

Applied, thanks!

[1/1] ARM: dts: axm: adjust whitespace around '='
      https://git.kernel.org/krzk/linux/c/06e00a512d0a09760bef10621d4cdefc26777fad

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
