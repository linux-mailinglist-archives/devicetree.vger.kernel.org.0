Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64EBB59C983
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 22:04:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229978AbiHVUDe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 16:03:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230244AbiHVUDd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 16:03:33 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0724565D1
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 13:03:26 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id z6so16783109lfu.9
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 13:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=vcm81uzJCKrbc/U4z0BAds2rI8zDuuzml7FmSvm0HN4=;
        b=Jifagm0BLRP0Sg92NnUJCYcNdWyiX1M6TU1uFByWq60B/YD0aCgOTJlrHm99+Gw88p
         SrcE9h3VAgCVWQdMwPIlvDM/P4s9BXD9ekq0DTMXN5ZtPU2cOkUPfWT42ARgRelkCw31
         xe5v6Jnq6QvnzheyY1538S8iXYQhRp09qxIJOfILQZ7+vyS7HIJKiRVK1g1Dn7rN8hlP
         HKCxREAh95AVILR8oLmMaV7OrVkDym2yXtWnTJJXcWLbm1x+tcWMbsR6rBpuTKNSqwKE
         zw6slrvt/frFngAnHtgaP2zduUwJhSbj0MF/nfGS1iENtNahcEhB48paq7IIEQNpejSl
         v5QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=vcm81uzJCKrbc/U4z0BAds2rI8zDuuzml7FmSvm0HN4=;
        b=sxwZzsugiml4P/5VjHudaZrUKwBHUnIDd3mESFFpthVltHNhkIKfms/x/h3YXnBI/V
         uPEzUs7bmyDn0TvaHTlUERUZKrKXPg2g+F4ZwWivCudwlB1iYy0J+pRKjfWb65OflTII
         6qrILBe7HIOA2f+ug+tj7I5g2BZx4DLkwvYLyOPIAux4YxNTuUQV3PNh4CAZr8ANpL7p
         4H8gG/pyf59Rc01WArdprNnbJu7InnALwaSJahQI8Iny9SbrAOwi+MvMJ5Dum+iTToaV
         SouNwPPLeVo9uYfL0H+Kn/IaVM1qYhRTleVKs5qo6MvQp86ZS1GYpDy6OniJoFprDEiA
         ipiA==
X-Gm-Message-State: ACgBeo1ji7bIUbDLqgYER85f7A4dBHbABTVBLiu91aED264i+iclmPaN
        f2ppdmScHmJ9ZjOZ7rwX4yFq8w==
X-Google-Smtp-Source: AA6agR79EI5pHR2SsGLy9919nWQiBYqhXjdbxQhl0WyhX0QDqmKvPxVr2ee3Do+zsJmsRRYMAfyT4A==
X-Received: by 2002:a05:6512:3e11:b0:492:c5ef:442b with SMTP id i17-20020a0565123e1100b00492c5ef442bmr7074011lfv.434.1661198604350;
        Mon, 22 Aug 2022 13:03:24 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 28-20020ac25f5c000000b00492db7f47f2sm1032575lfz.275.2022.08.22.13.03.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Aug 2022 13:03:23 -0700 (PDT)
Message-ID: <60dc852a-a77d-cb0a-b8ee-2deef67d0b0c@linaro.org>
Date:   Mon, 22 Aug 2022 23:03:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Content-Language: en-GB
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: dt-validate issues with the oneOf/$ref/incomplete node
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Short story:

If the dt schema file has a property with using oneOf/anyOf of several 
$ref references and the corresponding device node is incomplete and has 
status = "disabled", then the dt-validate would still validate the node 
against these schemas (and fail the validation as the node is incomplete).


Long story:


For quite a while I have been stumbling with the issue during 
refactoring the display/msm/mdss schema.

The schema had the following part:

patternProperties:
   "^dsi-phy@[1-9a-f][0-9a-f]*$":
     oneOf:
       - $ref: dsi-phy-28nm.yaml#
       - $ref: dsi-phy-20nm.yaml#
       - $ref: dsi-phy-14nm.yaml#
       - $ref: dsi-phy-10nm.yaml#
       - $ref: dsi-phy-7nm.yaml#

Validating existing DT files against just 
'DT_SCHEMA_FILES=display/msm/mdss' would work w/o errors. Validating 
against 'DT_SCHEMA_FILES=display/msm/dsi' would also validate w/o any 
issues. However specifying 'DT_SCHEMA_FILES=display/msm' (thus enabling 
both mdss.yaml and dsi-phy-*.yaml) would cause a long stream of 
"mdss@ae00000: dsi-phy@ae96400: 'oneOf' conditional failed, one must be 
fixed:" errors.

For quite a while I failed to understand what was causing the issue 
until I found that the errors are reported against the _disabled_ device 
nodes which miss e.g. several -supply nodes. If I added the 
corresponding missing supplies (or removed the requirement to have the 
supply from corresponding .yaml) then the file would validate against 
mdss.yaml + dsi*yaml combo.

Thus I suppose something goes wrong with the validation of disabled 
nodes against oneOf conditionals.

-- 
With best wishes
Dmitry
