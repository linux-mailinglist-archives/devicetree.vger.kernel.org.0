Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CBFC6DED4E
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 10:14:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229957AbjDLIOd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 04:14:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229752AbjDLIOc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 04:14:32 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F6A7FC
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 01:14:27 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id d22-20020a17090a111600b0023d1b009f52so13735287pja.2
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 01:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1681287266; x=1683879266;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tdz7ziJAx1J5fOg+gUbjH9qYWYL3+Fjw0+c8dzkluac=;
        b=Vc2BG658MmLcxZiSH+aVkLklMJRS85ZAoJWVikCJvOnk2fjH218RYLGRns6CHyX51k
         tNZ37a3y/VY6WSBvmkS1eEGYJiWnMqMuWdZuKi38CJUvWLdgrXFnVmBh4wwAbYDStoDp
         c5tJsxt5c11oDtB71H4cXXfc+TYD/acDORtRcQNbHqi35FVaiBWn8RTt84RmiIi8aJ9Y
         mFYOygGkPm7nTZkpMbsK+a2LGV3QutyXsKGqjS2TJVL2LOau7hesBaQ3QVRBz0FZ4Lzn
         8VqK/tjSbSKgVvoZ9QiVQWyQF70iYh8v6o1d7KNKf+AUCSybhSlXGKi8PTCvhsUyUhhb
         OJJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681287266; x=1683879266;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tdz7ziJAx1J5fOg+gUbjH9qYWYL3+Fjw0+c8dzkluac=;
        b=6HuGDIxY14LUy3aZPJpDJEasUgpaAculE841mm937IyRkZGmOy1c/HpuhUJRzn3lVV
         5/OYIUOhbv3M4SeFmRQuxUdcRu7lJ/JIri8cp8sO+DYelp/nUkOr+9ZUpawIcjlbQR8x
         P+ktiUsLLNXpmmhFWa0C/Kxl+KdIYMK0wAza39OodSKhpgCp1m7CVBfVNnTePncTd+hc
         mLtYazg5wkXXCw/D9mwhaXn6mKGq5T1cq1A/7PO7KuCvdFMF5/7Ymq0F7ql6zP2wxidO
         RpszKQA/5I1U4Q/nwvJlczIOarwz/SI5wTMUBv6ywrIADyu8d72yLbCrqtBYSiC1UGYH
         1LJQ==
X-Gm-Message-State: AAQBX9eKyVrMWw8EJoNceOTocctI4RAd0FeXy6aAyFDFd4ErnwqSONeG
        JeVSr8KZfw4er0Yx5qXFacKMRw==
X-Google-Smtp-Source: AKy350bwirretxOjUgXWQfxnpm13d+NcWFP7kvr4Zrrq4AGPa/W4fP/xWA+HmJTQRxjqvF+mtocsvQ==
X-Received: by 2002:a17:902:ec83:b0:1a1:dd05:39fe with SMTP id x3-20020a170902ec8300b001a1dd0539femr19724889plg.4.1681287266615;
        Wed, 12 Apr 2023 01:14:26 -0700 (PDT)
Received: from [10.220.157.239] ([124.148.245.238])
        by smtp.gmail.com with ESMTPSA id o17-20020a170902779100b001a19bac463fsm10978498pll.42.2023.04.12.01.14.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 01:14:26 -0700 (PDT)
Message-ID: <84dc7f75-8802-ef3c-8c61-b2e4e0bcfe04@tweaklogic.com>
Date:   Wed, 12 Apr 2023 16:14:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [RFC PATCH 1/2] dt-bindings: Document APDS9306 Light Sensor
 bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230411011203.5013-1-subhajit.ghosh@tweaklogic.com>
 <20230411011203.5013-2-subhajit.ghosh@tweaklogic.com>
 <7e98fefa-da9b-f07f-eafc-688b54011e64@linaro.org>
Content-Language: en-US
From:   Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <7e98fefa-da9b-f07f-eafc-688b54011e64@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

Thank you for the feedback.
I will change the subject line.

Regards,
Subhajit Ghosh
