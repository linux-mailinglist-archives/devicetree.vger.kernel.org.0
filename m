Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDA0B561C34
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 15:59:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235550AbiF3N7j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 09:59:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236039AbiF3N5d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 09:57:33 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EC7E61D4D
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 06:51:12 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id b26so15029327wrc.2
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 06:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=khhhKEx7sq0lhFI5dAc/uroAM1XbW+1ilHTIbm20NOk=;
        b=IzIubZ2zHoYlYou+XMnS/w7qqtOu8O2/iHyQ0fRBknk1JezEUL2fXLcQ0XO2OXflLA
         RYhM2g5XXgNQDlKssZqOhEdfHgy55IiOMgR5Dpuh6KaRjQgHsKf66FSCsPQ1C0fxLbul
         qA/SB23L9jOqIUUEnQlvEZtEF2OuzJ7Ka574b7f3BMVO1gHAZ0WUVU2Z3CecdH+Aqk8/
         mdvR762wnZXTBw9QxwoBuJf+/FXbP0u+65u+U2ujFr9NHj/a7nmA8DqGeU8Hi4OsLzbu
         H5fT9Qu5tKq7kVHvHxLUJS7q5uQuLDOulsJQmkcrkMuarhpuwix9bmjIQ4e+XoBNcuCw
         qyZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=khhhKEx7sq0lhFI5dAc/uroAM1XbW+1ilHTIbm20NOk=;
        b=67QmGxatRyNf86Gu1Uc6nQ5ZdiU45YPpkUW5DJH37ySfaekYwDGSFtmAM0Hy4oo7ki
         G/r50P/Mjan537x85lrs2EkQ6WbCIDd09xF33thmc/wDa9fqLfmkdHVdWZEVIc7BB0oa
         SG3o+g/BVnWlG+niaXJjhcLGjyF9bDzyxs5jnP9nGb+IdaD2gS2saL7GWvMtqB2P32Ud
         RtSJ79XN85y6BXwW+FdVnRCsQ7IPWUHgLL2/Dmx4slA1crcZnU6+++i4ggU5KAgxqTOM
         Cq3Ew3/tkbKlBAAMR+dzdRP5Pzij03+BA5Cpt6kCDTJ9DKs0yuQ6Mj2Xkf9XHgJTFRbq
         lcnA==
X-Gm-Message-State: AJIora/32Rwk9M2eYE9fhXVQ1IbE5i5G2DmyDhTxYjuAHcnsT1yrZrZe
        4mo+/myxSClgTwfhREsHxW8+TQ==
X-Google-Smtp-Source: AGRyM1vE4U4MTgejf927B0v+n25IWe0zlGcsj47f/J55lkCIu2INvuKzX5utIS9G3vILgCqPP1Jt6Q==
X-Received: by 2002:adf:d084:0:b0:21b:8a7c:d260 with SMTP id y4-20020adfd084000000b0021b8a7cd260mr8341928wrh.68.1656597069950;
        Thu, 30 Jun 2022 06:51:09 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id b16-20020a5d6350000000b0021b8905e797sm19069457wrw.69.2022.06.30.06.51.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 06:51:09 -0700 (PDT)
Message-ID: <89fb276e-fe3b-3719-5ca2-c58766f7adb6@nexus-software.ie>
Date:   Thu, 30 Jun 2022 14:51:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH 1/2] dt-bindings: mailbox: qcom: Add syscon const for
 relevant entries
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc:     bjorn.andersson@linaro.org, agross@kernel.org,
        devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, jassisinghbrar@gmail.com,
        linux-arm-msm@vger.kernel.org
References: <20220630043536.3308546-1-bryan.odonoghue@linaro.org>
 <20220630043536.3308546-2-bryan.odonoghue@linaro.org>
 <1656596665.792233.2569459.nullmailer@robh.at.kernel.org>
From:   Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <1656596665.792233.2569459.nullmailer@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/06/2022 14:44, Rob Herring wrote:
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.example.dtb: mailbox@b011000: compatible: 'oneOf' conditional failed, one must be fixed:
> 	['qcom,qcs404-apcs-apps-global'] is too short

ah... the example

will fix

---
bod
