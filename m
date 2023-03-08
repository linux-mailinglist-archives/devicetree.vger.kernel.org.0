Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D56196B01F3
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 09:48:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229944AbjCHIsq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 03:48:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230006AbjCHIsn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 03:48:43 -0500
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com [216.71.154.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E0AA900B8
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 00:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1678265322; x=1709801322;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=nKMxQoiaejKfmdpJhbMJCkmPnEhIS9AxPbvCXG85D28=;
  b=dnTdD0X6FQjigMzUYaw67Xzrqeo5mzc0Jxr6JMzFASF+34GKyRA/LiGV
   44DC5/csEucLG2D0IDw2qfYXUXJTzxXnslyP3L6remkzznec8Pwe0uifw
   MVPb4549HCKEa4Ykd7n/Nt+5p6AXZ1KCgbjmtqGQoHHv58/moONXImRci
   zKb5IxKG/PQtenHR1Z/m5oqJZPGP4mEkzqLyPtcGhYC/axVqkh7yXMh2n
   n/gVBknawS3YPga/z/FToNBiSlVjE2poO25kjVzegmwGtzy3RbdZi/H+x
   sp4DNyWnwFK2554gBk2DTct6AbR9iPxkxqdsgh06keKGFclgYgTxKAPEC
   Q==;
X-IronPort-AV: E=Sophos;i="5.98,243,1673884800"; 
   d="scan'208";a="225101354"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 08 Mar 2023 16:48:39 +0800
IronPort-SDR: KD5NKYqg1wEaO9PgXAx1Ni4Q9lN/YBfTMoGQtmWMsy3NYFLwKGTHcu4y+2eqR3asNBoolfskil
 FnCwodyppeoLPeg7Ejg8CJ26J7SLD4IGaL4qMxQu+5w4bwelX9FBcH5pxWMbEJ04LWCSxXsHbp
 tPzPMou4a8TBCCc2DU7xTDKqrzKLQ7dNdiv7bi/HS2y2v6cPjGHzJXrz4REvzEFgHHBnPYgJs0
 xQf3UryZ4wMGVhLNUuC2lKNwK+g11583QgGn3w+trQ3JFfpWVvDqIScFmclFwXmcmhHj0ycLJy
 Tbk=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 07 Mar 2023 23:59:36 -0800
IronPort-SDR: jt4G+mgx2RT5iqRA9YC4lTJULIIIX0lYDimjkQOdTX+aQN1bINTiF99JTaouIjzF0aRhtRAL0e
 llLaV7p+SQjIjRfdA2JYsdY//P2Sh+yjdVtHrfiDCVF4fUX9H870YKH83AFwARGi44gVFKzNNJ
 H+DKIvuxmK3+PtMQ3P7wnkSGTYZO+Pf82xUBrwE2YwHH1psiH91qENkvfou8TK8rXiNxqqNGes
 ki+QAQsLGf63F8G4LGh7RWZqD/fVR90MzQmdJREgevGpMDsaPCf/faLcVTJ3MwiFo1AO2HB4Qj
 LxE=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 08 Mar 2023 00:48:40 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PWmF32M5Rz1Rwt8
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 00:48:39 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1678265318; x=1680857319; bh=nKMxQoiaejKfmdpJhbMJCkmPnEhIS9AxPbv
        CXG85D28=; b=BmgjmQi1AEDeztx+T3AeCww/VpJukjqB5Nx9MioJPqMkTFv9jfD
        wwF+oQPUI0hn5EjIK6bHCEaZm7l68tMvHvu2CUlJs+/AulrL/gsmNk9NQihiwKQE
        viDJZQVugkGh9I/VeGd6xP2Z6BTEYs6C2+CiFAZTcBks9HOeflzKMZtz2XCwNPzA
        ezLi5DGA1nidVeI8rgRz7btQ4mgtS+NsnBajlkcRpTSAUOCci4txm9PpmSgYAjE5
        fdkkSfnkuMUHu23n5U5c2oN05E2QP4gctBPjMpe99KXy7uIQcW99FBIajURXu51/
        j6ybSueyMv6d7htQ6GXwO9hw08kw6OVqStA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id Ppa2ZFUC2GvM for <devicetree@vger.kernel.org>;
        Wed,  8 Mar 2023 00:48:38 -0800 (PST)
Received: from [10.225.163.63] (unknown [10.225.163.63])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PWmF140Qhz1RvLy;
        Wed,  8 Mar 2023 00:48:37 -0800 (PST)
Message-ID: <b121dbf4-abc4-07ce-f0b1-52050fce3818@opensource.wdc.com>
Date:   Wed, 8 Mar 2023 17:48:35 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4] dt-bindings: ata: Add UniPhier controller binding
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>
Cc:     linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230222155906.19403-1-hayashi.kunihiko@socionext.com>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230222155906.19403-1-hayashi.kunihiko@socionext.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/23/23 00:59, Kunihiko Hayashi wrote:
> Add UniPhier SATA controller compatible string to the platform binding.
> This controller needs three reset controls for Pro4 SoC, or two reset
> controls for PXs2 and PXs3 SoCs.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>

Applied to for-6.4. Thanks !

-- 
Damien Le Moal
Western Digital Research

