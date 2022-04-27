Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94804512068
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:39:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241991AbiD0QKO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 12:10:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242679AbiD0QJt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 12:09:49 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08A0A48B8B8
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 09:05:53 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id gh6so4440635ejb.0
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 09:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nlWv3bBsoiqmnFKZVf0cWitj0rFj51ESVAm5rIPY47s=;
        b=PDsMRn/5mDiml5+/eTgHLrOU2ewvUp8TWOz42SlPHphdVURmqr7igb7PelTKMlmORH
         FKjbTQUDeEfzZpV9bfEhAKesOOS6/J+7QI+IjAAu4iti6lHJNWx/6ZViyQlybO5FUaar
         b1mJ5y72XeQdzY27dNKRs2w/bA+bxly62eWBrV3oEp4q9ZQpGQTo1Kz0eiyNCtUNbHzD
         aRohzb0w+5CKokFAae6RKPSUjoIDHHUl6JD3XKzJjVIUL4cNnEhsNa9yksxOIOtv3xVN
         6nuql8+6zCFx4JYnXJiPWUzvA14RbRCY0g/2kfqPGG9DirdGeRXOlYR+8DbSmBpS5Iq1
         mn6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nlWv3bBsoiqmnFKZVf0cWitj0rFj51ESVAm5rIPY47s=;
        b=NdDvJ603HM1du5nZUQA2CO6OXPw+To9wLwKtONxXS1nYqaV5tZqDSWrg6UxNgyCygc
         YXlAfIhfO2yF6uMyDvjk9hNs7JplXKU4CHvcXps0Ivbx3ibyLChJ5A5tgSTEY4wPz78R
         olJqa4IpqKWQx251nAF689WZ/J08+38RkgtXpaYZvQZcpkrlQyyvw69jGXkNm+YLggMV
         3Nj748RbPpfKkt+mMOvphkpD7gOIyoVSYVCccedTyA3sUd1OEtg46ByMBSAB9KFWvu+3
         diqhf18p+EM4GXF/UEw03lrCj6xGYbGZAb5NjpNp29EwiVPU6KEJZwhLcYdj+d7R/WIl
         74mA==
X-Gm-Message-State: AOAM533JjIl42TUO4Z/6OrCK8iVFw3Fndn/W3aRzsb7po1I6TDLzQetx
        1Kbr0QozHevpShHDjCATwLB0ew==
X-Google-Smtp-Source: ABdhPJyoPwa+1tp5ouz1f/FVaGPLFM+jVwC8NcaNu76aEiPeEMLaU8YRvOFeVI9ju2FNzJ62VQSTqw==
X-Received: by 2002:a17:907:8694:b0:6f3:8e7e:fcfa with SMTP id qa20-20020a170907869400b006f38e7efcfamr16648939ejc.82.1651075546697;
        Wed, 27 Apr 2022 09:05:46 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b17-20020aa7dc11000000b00412ae7fda95sm8571437edu.44.2022.04.27.09.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 09:05:46 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 00/0x] dmaengine/ARM: use proper 'dma-channels/requests' properties
Date:   Wed, 27 Apr 2022 18:05:35 +0200
Message-Id: <20220427160538.646044-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

The core DT schema defines generic 'dma-channels' and 'dma-requests'
properties, so in preparation to moving bindings to DT schema, convert
existing users of '#dma-channels' and '#dma-requests' to the generic
variant.

Not tested on hardware.

IMPORTANT
=========
The patchset is not bisectable! The DTS patch should be applied a
release *after* driver change is accepted.

See also:
[1] https://lore.kernel.org/linux-devicetree/fedb56be-f275-aabb-cdf5-dbd394b8a7bd@linaro.org/T/#m6235f451045c337d70a62dc65eab9a716618550b

Best regards,
Krzysztof
