Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF35B5839D4
	for <lists+devicetree@lfdr.de>; Thu, 28 Jul 2022 09:50:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234721AbiG1HuF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 03:50:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234639AbiG1HuD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 03:50:03 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 130DF61717
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 00:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1658994601;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=9eK2YyyBatGGNk2Z0mtnha3xmk64bToJtZ1mLMzdB7s=;
        b=WWGWpRJipWezrw7Xy0LSFIxE3cVwUssfXtO3oasDzBSZxJyHKIZyq3etUtXIKCIXCOXHNY
        4bxWZNSx5fqlTwDrjyPHLZz8M0Y3Ks4SuijFG342FleUMAv9rLe+zZxe/vFWqSFWhb0QFl
        4YTJSewweZP8q80+a5Bm7W+sE6N1A1A=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-561-b0fEx_CuO5aRP8k7B_ob4A-1; Thu, 28 Jul 2022 03:49:58 -0400
X-MC-Unique: b0fEx_CuO5aRP8k7B_ob4A-1
Received: by mail-wr1-f70.google.com with SMTP id t13-20020adfe10d000000b0021bae3def1eso155544wrz.3
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 00:49:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=9eK2YyyBatGGNk2Z0mtnha3xmk64bToJtZ1mLMzdB7s=;
        b=IJJuv/aCVgyJHQYYP40zMfCdzV0rD8RTHKzfEp9q+Q/FnajNLvzhIPCueHOEevB5ON
         l3NCRfja53vVa8LX1r8SNOqn/v1nYM68azHes4jgvlGphp+D/gcIHzMbjZVTEBf72ZCj
         7TiBF+D1udqHHRdtlvGTdkpi0oFzmoWqGafocEmrSQ/uAsjyL1gV+bx4Ff9Vhr1ayIbc
         pslotg+hOp2Zlbq5uKbQpHgogYOP+MDrHGEMyRFh7urQdzWmkflS5bgGc9OBYt8CXTlK
         ZELeE6enPbFZ0VUdJxdKWw+q4pJzJdAiPA66Dwv5UqCPmMqaDxQkpu1He2jA4UJb0pQ/
         fD/g==
X-Gm-Message-State: AJIora89J3M5BOmtdT2aA/6OsA1vPUcDYyJP4MMg6IIS0Z0IoksOh6mw
        4pNxFzsEQrYolBMJ+9XedIGHiJEcTUcjHeWWJFmrdc8uJePmwHd8ITe78tBqXiGjw9WReBIQDnY
        gcFvQDnsIq7aX+PrTIHSTOQ==
X-Received: by 2002:adf:d1c2:0:b0:21e:6dd4:5ece with SMTP id b2-20020adfd1c2000000b0021e6dd45ecemr15961859wrd.119.1658994597340;
        Thu, 28 Jul 2022 00:49:57 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1sZVjvhgrjDvwEsjcaTQK0ct/rZFtxkAxhfiEtpVH5WFjDRl1aiMSrCve4zLcCVqd+A8JNELw==
X-Received: by 2002:adf:d1c2:0:b0:21e:6dd4:5ece with SMTP id b2-20020adfd1c2000000b0021e6dd45ecemr15961839wrd.119.1658994597117;
        Thu, 28 Jul 2022 00:49:57 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-104-164.dyn.eolo.it. [146.241.104.164])
        by smtp.gmail.com with ESMTPSA id bk9-20020a0560001d8900b0021d76a1b0e3sm234618wrb.6.2022.07.28.00.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 00:49:56 -0700 (PDT)
Message-ID: <87d8327b85ae54e4c9d080d0ef6645eda6f92e98.camel@redhat.com>
Subject: Re: [PATCH v2 2/2] net: cdns,macb: use correct xlnx prefix for
 Xilinx
From:   Paolo Abeni <pabeni@redhat.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Harini Katakam <harini.katakam@xilinx.com>,
        Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Date:   Thu, 28 Jul 2022 09:49:55 +0200
In-Reply-To: <20220726070802.26579-2-krzysztof.kozlowski@linaro.org>
References: <20220726070802.26579-1-krzysztof.kozlowski@linaro.org>
         <20220726070802.26579-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

On Tue, 2022-07-26 at 09:08 +0200, Krzysztof Kozlowski wrote:
> Use correct vendor for Xilinx versions of Cadence MACB/GEM Ethernet
> controller.  The Versal compatible was not released, so it can be
> changed. 

I'm keeping this in PW a little extra time to allow for xilinx's
review.

@Harini, @Radhey: could you please confirm the above?

Thanks!

Paolo

