Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7034050D080
	for <lists+devicetree@lfdr.de>; Sun, 24 Apr 2022 10:41:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233946AbiDXIoJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Apr 2022 04:44:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232641AbiDXIoI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Apr 2022 04:44:08 -0400
X-Greylist: delayed 389 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 24 Apr 2022 01:41:02 PDT
Received: from ixit.cz (ip-94-112-206-30.net.upcbroadband.cz [94.112.206.30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 756ED2CE32
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 01:40:59 -0700 (PDT)
Received: from [10.0.0.209] (_gateway [10.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by ixit.cz (Postfix) with ESMTPSA id E58882007F;
        Sun, 24 Apr 2022 10:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
        t=1650789266;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=Xzcl7K4LDPDi7/yrVNIZRHhD0xDVDPJYLa59cWEueYE=;
        b=17L7qyhD8SWliNo+cY+pEInCTFG0mKcgv6csZZVDb5vrvaFroz9SKURzNzWkDut/xkevn8
        OynbX0V/Vj7bjj1wmaRPKPRXzRQRJBlj6EADyYvQkcbhCHl4KQe93iMhZtru4yZJss49Yw
        sLfUM8HSrfwehuaFbMs33i0KOeJyJ3U=
Message-ID: <c652c8cb-23ba-c5e4-cebe-383a9237d798@ixit.cz>
Date:   Sun, 24 Apr 2022 10:34:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To:     bjorn.andersson@linaro.org, krzysztof.kozlowski@linaro.org
Cc:     devicetree@vger.kernel.org
From:   David Heidelberg <david@ixit.cz>
Subject: Multiline in device-trees bindings
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi.

Often is suggested to drop `|` and `>` for the `description` inside 
device-tree bindings.

I haven't found any recommendation related to the device-tree bindings, 
but from [1] it seems to be even used in example.

My main concern would be, that using block style indicators [2] can make 
text more readable in future, when at some point eye pleasing 
documentation gets generated from the device-tree YAML files.

Would be nice to have consensus when to use them and when not to. Maybe 
add it into documentation or reference YAML documentation with addition 
of specific recommendation for the kernel project?

Thank you

David

[1] 
https://www.kernel.org/doc/html/latest/devicetree/bindings/writing-schema.html?highlight=binding#example-schema

[2] https://yaml-multiline.info/

