Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D74B7251C7
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 03:51:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240529AbjFGBvb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 21:51:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240520AbjFGBvH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 21:51:07 -0400
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 392594207
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 18:48:53 -0700 (PDT)
Received: from kwepemi500011.china.huawei.com (unknown [172.30.72.55])
        by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4QbVV93GgGz18M4Z;
        Wed,  7 Jun 2023 09:43:13 +0800 (CST)
Received: from [10.67.103.39] (10.67.103.39) by kwepemi500011.china.huawei.com
 (7.221.188.124) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Wed, 7 Jun
 2023 09:48:00 +0800
Message-ID: <647FE1CF.3000504@hisilicon.com>
Date:   Wed, 7 Jun 2023 09:47:59 +0800
From:   Wei Xu <xuwei5@hisilicon.com>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To:     Tony Lindgren <tony@atomide.com>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Dinh Nguyen <dinguyen@kernel.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        Niravkumar L Rabara <niravkumar.l.rabara@intel.com>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: Change pinconf controller node name to pinctrl
References: <20230510103816.39015-1-tony@atomide.com>
In-Reply-To: <20230510103816.39015-1-tony@atomide.com>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.103.39]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemi500011.china.huawei.com (7.221.188.124)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tony,

On 2023/5/10 18:38, Tony Lindgren wrote:
> According to the pinctrl binding pinmux and pinctrl are valid controller
> names. Let's replace pinconf with pinctrl so we don't get new warnings
> when pinctrl-singl yaml binding gets merged.
> 
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Dinh Nguyen <dinguyen@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
> Cc: Ray Jui <rjui@broadcom.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Scott Branden <sbranden@broadcom.com>
> Cc: Wei Xu <xuwei5@hisilicon.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>

Acked-by: Wei Xu <xuwei5@hisilicon.com> #hisilicon
Thanks!

Best Regards,
Wei
