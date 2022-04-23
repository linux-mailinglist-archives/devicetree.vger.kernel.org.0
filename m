Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B6E850C95B
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 12:46:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232548AbiDWKtk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 06:49:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229732AbiDWKtj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 06:49:39 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EC1BBF33C
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 03:46:42 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id y20so20816100eju.7
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 03:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:content-language:to:cc:from
         :subject:content-transfer-encoding;
        bh=emkOfd5xWiMcU5IX0xxvzLYNLyQMfJ1OVBqTePDG4qo=;
        b=Mnr657dX9d42owjnfMyYvw0Epvh9BbUF9lg3QdkM6WqktO6wUBxgm4NQd3PdGFl7Wa
         9p1GENiovERqesML98NLXTxl45PWWcltcqBcQ0Kr50x974fmc5+COTWB8xZsmu0UrrXD
         yQuo4inpVzmCyzyWpKpTgdCHM1yvwIp3+xmjDy8VGKvjyBldu+iygZ4S7cILH5AMzKhc
         Hg/HRgt+1cqT5Dnf3xyXgwOQzJnyQPV19snnnGd1UPsstTvILAtbPclyRscPfqaYI+5R
         k1U498s+wThkeotcWHVanIItpPf2qRJKwdQQ2Xvxok/amM+mEiOZBZrgmtnKsVkXdCyD
         1u5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:cc:from:subject:content-transfer-encoding;
        bh=emkOfd5xWiMcU5IX0xxvzLYNLyQMfJ1OVBqTePDG4qo=;
        b=prdX6xyHVv0nplZUsBGSE7gNnO+qLqX1tnMB6ib3ElAbNJh3sOQfq5dn6rFGfHGmn2
         XEqgki9kisCI4Gm7CT9lN4/dkvReoA7NhrpTNATtRwyXm8eD403zU9Tt7ouYb9bshIxo
         IRAjq76KAojEfazV6ekpd+/i5Fc6qhdszCawdANpAqZSf4WwrN8kzv1SZOwa+IZJLENO
         UicSeuczBQJogiztI/Z9Td5wcLB3CuY0a6V85rpJD6CiVz0Skj4pp0QCcMnL/UPYEpBW
         nM15OHyy648UyJ7hSPCQ+/niB2N5BiwmWKv/iB3yPJmEDQMHMMcTvi8g1QITuRBgIXw9
         ay5A==
X-Gm-Message-State: AOAM530VCGrF3syUfbsoxVelkomT+u6JGibvcguqBsBYMcSD8eUXauwm
        1c9urbHHrtbrtS4IUFX+zeiouOWNIUzIqg==
X-Google-Smtp-Source: ABdhPJw948PGkoWB02Q4jjD+R+xdr0lLadLwr6CksZSf5nin4BMTMWKk9aLil/YGYKG8rNQX5R6kSA==
X-Received: by 2002:a17:906:974c:b0:6ef:f428:d527 with SMTP id o12-20020a170906974c00b006eff428d527mr7649074ejy.166.1650710801098;
        Sat, 23 Apr 2022 03:46:41 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v26-20020aa7d65a000000b00424064b8ed2sm2061498edr.33.2022.04.23.03.46.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Apr 2022 03:46:40 -0700 (PDT)
Message-ID: <42fbcb55-b6ef-906f-7584-62a6097a8639@linaro.org>
Date:   Sat, 23 Apr 2022 12:46:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: PCI schema accepts unevaluated properties
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Dmitry pointed out interesting issue when writing PCI schema. Consider
the patch for Exynos PCI schema (which includes SNPS schema and
unevaluatedProperties:false):
https://pastebin.ubuntu.com/p/4SzxVP4N3j/

This passes `make dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/pci/` without a
problem. It should not. The property is nowhere described, so
unevaluatedProperties should scream.

Other bindings using unevaluated:false and some ref, also has this
issue. The additionalProperties:false (when there is no ref for other
schema) works correct.

DT schema v2022.3.2.

Best regards,
Krzysztof
