Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47742584E64
	for <lists+devicetree@lfdr.de>; Fri, 29 Jul 2022 11:53:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231878AbiG2JxG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jul 2022 05:53:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230506AbiG2JxE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jul 2022 05:53:04 -0400
Received: from mx.socionext.com (mx.socionext.com [202.248.49.38])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id DF5C678201;
        Fri, 29 Jul 2022 02:53:02 -0700 (PDT)
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 29 Jul 2022 18:53:00 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
        by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 0231220584CE;
        Fri, 29 Jul 2022 18:53:00 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP; Fri, 29 Jul 2022 18:52:59 +0900
Received: from [10.212.182.0] (unknown [10.212.182.0])
        by kinkan2.css.socionext.com (Postfix) with ESMTP id A3CF7B62A4;
        Fri, 29 Jul 2022 18:52:58 +0900 (JST)
Subject: Re: [PATCH 0/9] Update UniPhier armv8 devicetree
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <1656894074-15751-1-git-send-email-hayashi.kunihiko@socionext.com>
From:   Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Message-ID: <0a0a64a7-60cc-e95d-c2e3-3c11a53a6527@socionext.com>
Date:   Fri, 29 Jul 2022 18:52:58 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <1656894074-15751-1-git-send-email-hayashi.kunihiko@socionext.com>
Content-Type: text/plain; charset=iso-2022-jp; format=flowed; delsp=yes
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Arnd, Olof,

On 2022/07/04 9:21, Kunihiko Hayashi wrote:
> Update devicetree sources for UniPhier armv8 SoCs to remove dtschema
> warnings, add support existing features that haven't yet been
> described, and replace constants with macros.

If there is nothing wrong with this series and armv7 DT series,
I'd like to make a pull request.
If the request is late, carry it over to the next version.

How about that?

Thank you,

---
Best Regards
Kunihiko Hayashi
