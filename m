Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 670BC600013
	for <lists+devicetree@lfdr.de>; Sun, 16 Oct 2022 16:53:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229716AbiJPOxi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 10:53:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229721AbiJPOxh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 10:53:37 -0400
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com [IPv6:2607:f8b0:4864:20::82a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FC1B3BC64
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 07:53:35 -0700 (PDT)
Received: by mail-qt1-x82a.google.com with SMTP id hh9so6406972qtb.13
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 07:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M617hUvDTpcFldbMirW8IIk1uyeowTMveYy1yVY2fm0=;
        b=oYhVG46jOla5tkhSF0Jlqh1Ynjmnbw+LFwUsB7noqbu1FtN/o3MmL7qYcuQH0uSLrc
         GvnSlCwIAg0klW50RN7piUw2pKm1pRUAjggKPHWSrZ3wr+fQXRHIkzOmywtrkQc3Qi3v
         10n5fzQ+MNMTwNwyimpRkOKhav1ndvI8sGJhxQc5uGCO7WrAF7LLTlSrIgaA+00GQ/yt
         NehaavngrV8ziMgWWXnnSJrB6pEA9mzD5Y4HX6y5AdMQHS8jnpfijk4mp0vD7OLLXVvn
         2IOiQ0rQowYB4v7k4K1cLwpWz+pOM83ZUOvAn0wkjA51hddD7S5pnnEh5DU26EtCPZZk
         WPSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M617hUvDTpcFldbMirW8IIk1uyeowTMveYy1yVY2fm0=;
        b=gV5waczI3o3aQOaeup5fXf287tmrzIU4nXXt39z28689eahzFzeSv/FHAj4sv+AWxO
         ijj2Yj7R6zMFnAug+PG+A4mwEfuAHhYL7aGHitS79ttpd130wzNxul9UrDe7lvL7Qvef
         JkVfqWBLDlqdditAynu6H86/zvALolXCWCQf2V2C39WE/rHjkQ4nMWESBqIBL2m8VQLz
         JuDo7fUgKFPdEc/xCJcAbdpmQWVXTpVOZr305z9Ripf2sHrewOqZiu1ZTxGycy0K/EcO
         ihy2aXUEl8EFBwsSrh85DoxHw/fjRDgHHRPKLRBert92rswRk2nRzoHt8YfVn2kDBtKg
         Nk2Q==
X-Gm-Message-State: ACrzQf1BX0TuL7zTe028NWt00s8W/d4pnKnkr11Zbe2pqguUulmKai7G
        yi7GLbM9QXemLmRx3r1FC3t9Tw==
X-Google-Smtp-Source: AMsMyM7EoF905CSD7P1QLRs54RDbWyurGOEQ+o4lDGC81gASGR8Yp7CprIB3QIAQlpjWkVq0WSEwrQ==
X-Received: by 2002:a05:622a:651:b0:398:5034:9e85 with SMTP id a17-20020a05622a065100b0039850349e85mr5406552qtb.277.1665932014173;
        Sun, 16 Oct 2022 07:53:34 -0700 (PDT)
Received: from ?IPV6:2601:42:0:3450:9b13:d679:7b5b:6921? ([2601:42:0:3450:9b13:d679:7b5b:6921])
        by smtp.gmail.com with ESMTPSA id de4-20020a05620a370400b006e07228ed53sm6890016qkb.18.2022.10.16.07.53.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Oct 2022 07:53:32 -0700 (PDT)
Message-ID: <bc1aa679-7173-c9a3-c35c-1da8b6c6f1f2@linaro.org>
Date:   Sun, 16 Oct 2022 10:53:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v7 1/2] dt-bindings: input: document Qualcomm PMI8998
 haptics driver
To:     Caleb Connolly <caleb@connolly.tech>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        devicetree@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Jeff LaBundy <jeff@labundy.com>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-input@vger.kernel.org,
        linux-kernel@vger.kernel.org, llvm@lists.linux.dev,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Rob Herring <robh+dt@kernel.org>, Tom Rix <trix@redhat.com>
References: <20221015172915.1436236-1-caleb@connolly.tech>
 <20221015172915.1436236-2-caleb@connolly.tech>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221015172915.1436236-2-caleb@connolly.tech>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/10/2022 13:30, Caleb Connolly wrote:
> Add bindings for qcom PMIC PMI8998 haptics driver.
> 
> Signed-off-by: Caleb Connolly <caleb@connolly.tech>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

