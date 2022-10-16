Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56E8260005B
	for <lists+devicetree@lfdr.de>; Sun, 16 Oct 2022 17:04:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229964AbiJPPEG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 11:04:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230017AbiJPPDv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 11:03:51 -0400
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A05A42AEB
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 08:03:28 -0700 (PDT)
Received: by mail-qv1-xf36.google.com with SMTP id o67so6135196qvo.13
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 08:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kchXAQqBjTI61lsAc6TXeWLbu5B7NcNZ6oHonEEBmWQ=;
        b=nSRDFD3pGwL5krYm3kIa0xdlLamQ8UU5TLgM5KI4cbkl+/3sY464mVXHZ1+1GDLjEE
         7aGsTvsHy2FnH9LToCHnacPgL3FL40JH9hJwf+RsDg4zvwaRUF5FyOSwCtp7z+44jl76
         q5loySJXejZ7wwPJ56W7uybU0LXdb4H7HpdV6ZaifrFkjPns92JQEKaIzKFFWL1jiNdx
         9Rg/PMAvPTXh5zYarWOxL0w8S57qkXvGfrkhYfW2y9g36i/jSxZYOTAUq7i0PJd6776x
         SCKlHsmJZ7rJtVY0dI49VSP15qL6cBd6cjh1sa1N7c1uFQBnhDZxsQbV584PcszN4hKq
         HqLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kchXAQqBjTI61lsAc6TXeWLbu5B7NcNZ6oHonEEBmWQ=;
        b=Zle7Eymdq0yaa65YZbGkLQPI4Z3AeRM72HiQdNvrMCdsu6lBhqtgwB15zB1V9TTroL
         QVC2aypZca172vD+pwqmSyA4AYJqS9EjYx/ny8FE1I/44nASzFU87Z0m/Vo2S1/I2kOF
         dQa7CNkF9Y25hZt0v9z63TQwnjR8fpeczXHWQYvyt0SsNUzPDsaxVGW7LKU8Pmh9hcsD
         XgtpCpo9qmM+yyat5VthuAl7gFj4cW8tNdlPD+wQ8d0V51Ukg19YmRd6UPMn+PsEY+2R
         Tj1ABB2koKRUsV/ya7s3ePlM1eFaYndOD/TPajs2tRwNtGAeCqVoAdGSjpOgqMaO4rDw
         Q0VQ==
X-Gm-Message-State: ACrzQf2aR+HEUNIp3BzclKOB2j8hObxpKg3SC056kr4Nnszrkfkbr3tX
        il1G4zFqf77IHtz3zw7JqvnqvQ==
X-Google-Smtp-Source: AMsMyM5wFsjGbgCd21iwBx7KjRjgGUW3H76261Yua9r1VfHDKGuaeNCSx/JmHTd1zxhk6bVeFSXBow==
X-Received: by 2002:ad4:5d48:0:b0:4b4:12a4:8a2f with SMTP id jk8-20020ad45d48000000b004b412a48a2fmr5437982qvb.85.1665932606434;
        Sun, 16 Oct 2022 08:03:26 -0700 (PDT)
Received: from ?IPV6:2601:42:0:3450:9b13:d679:7b5b:6921? ([2601:42:0:3450:9b13:d679:7b5b:6921])
        by smtp.gmail.com with ESMTPSA id m17-20020ae9e711000000b006aedb35d8a1sm7118186qka.74.2022.10.16.08.03.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Oct 2022 08:03:25 -0700 (PDT)
Message-ID: <0c49f592-e610-c629-d25b-a795b045d56b@linaro.org>
Date:   Sun, 16 Oct 2022 11:03:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH 5/5] dt-bindings: thermal: tsens: Add sm8450 compatible
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221016090035.565350-1-luca@z3ntu.xyz>
 <20221016090035.565350-5-luca@z3ntu.xyz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221016090035.565350-5-luca@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/10/2022 05:00, Luca Weiss wrote:
> Document the tsens-v2 compatible for sm8450 SoC.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

