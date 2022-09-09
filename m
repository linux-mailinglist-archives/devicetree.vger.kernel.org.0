Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 422A85B3906
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 15:31:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231225AbiIINb0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 09:31:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231221AbiIINbY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 09:31:24 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81BC71269FF
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 06:31:23 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id bq23so2691696lfb.7
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 06:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=QATEerfWdeHtuk2b8IdfnxtgvdbCuFkN8Fhc02s3dYc=;
        b=kGfLhczz0jiwGyvxrgGKB+yOGyxagqjLSeXcWNvr5CCOQX73IsQxxBKyNRT8QKUulj
         mEUKnS2LyCpuZS7VN9WNSswO2YFm9QpHpE6BMaegYn1MxlPQk4AuAoTgm5lKC5hNsZ/g
         d7aYZiovU0RNAVgHUb3/IaYxIXatlxCMzUKZcJ6bDaCXYkDZ5UhgMQtcfkLFUMHZPpDg
         i4yH8cm1FjDFd25quyConnC4nYcAL1mAuX5VERjrSv0qV5ob/vadOPP1JSJNOv8YA7Ep
         ZGamSjpMOV2qQBbaCqnOXNgIA2xvIF9tc2+Gg477MlikoPXWZeq2LgI4+M1H17T5aiUT
         uNLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=QATEerfWdeHtuk2b8IdfnxtgvdbCuFkN8Fhc02s3dYc=;
        b=fnopRaIlBWbhuJxdod2lBP337nc6C1yU4oeONZD1fq6KbadBEDocI8L2K8b7hZ2dIf
         q99aE5N6sI66PCclY3ilFhjsjQQ2FrfhMFdBC3eoVuBufZ468E5tvBJu2D1ZMK77wd8M
         1u4iE4AESyANXzMs6PDLEiOGiaZFvf+iQhLfK24GLIKh3EUWhb6J8zk9Z29McggwYyqt
         yf89EzKj7L+qWg4lBDaYT0VIlcpuKN5ZUw/DE0LluLFTiexdAvoXSQB8EsYIzkpMfo2W
         FLy3FUyQnLVjtOhYJQtCq5f5nJEc9vOx1gik8PPdQYs51yl3DVsUVKJkbKM1YQxhMEjH
         8UtA==
X-Gm-Message-State: ACgBeo0Q+lR+/7HZ6FPEUQovEspodrxzgRDIkoeAwYGLqimYszliK/sG
        DWaL112VFZE7cOry9nLnG+fjVA==
X-Google-Smtp-Source: AA6agR7fIDxNSncdSg5suv4FMCPLL82wx2WduXPJ0SVVApKFUTY4GtAX+mJVL1Oi9vqtyY1r/6MJ/w==
X-Received: by 2002:a05:6512:3e10:b0:498:f317:e57e with SMTP id i16-20020a0565123e1000b00498f317e57emr2202136lfv.328.1662730281949;
        Fri, 09 Sep 2022 06:31:21 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x10-20020ac259ca000000b00492e570e036sm90633lfn.54.2022.09.09.06.31.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 06:31:21 -0700 (PDT)
Message-ID: <9aa9828b-ecc1-0783-4dde-1af81bd54c19@linaro.org>
Date:   Fri, 9 Sep 2022 15:31:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 5/6] ARM: dts: qcom: apq8064: add #clock-cells to the HDMI
 PHY node
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
        Kishon Vijay Abraham I <kishon@ti.com>
References: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
 <20220909132010.3814817-6-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220909132010.3814817-6-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/09/2022 15:20, Dmitry Baryshkov wrote:
> Add #clock-cells property to the HDMI PHY device node to let other nodes
> resolve the hdmipll clock.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
