Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6845170DF22
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 16:26:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236641AbjEWO0m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 10:26:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234679AbjEWO0l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 10:26:41 -0400
X-Greylist: delayed 1586 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 23 May 2023 07:26:40 PDT
Received: from vern.gendns.com (vern.gendns.com [98.142.107.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 957BB119
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 07:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
        In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
        :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=1Tlj2Ptm8NmYtNmTjDTXkr0CiPuKuxYp/TNdkUUtLus=; b=kWMPlRGHpmzcQO1ohnOWaDiwHR
        eVJJGmSvlYstNT1CuSnMGkxfhHXqxB5QKzAeMolk9E3dZvlTlDwvgGG+u5IvXUMALSC29/tRyWp4B
        VNyXDmHHo21MYkhcRL+RzwWJS6s5uIUqNzS8AqQUdZvDDye4Icuwo1R/du2LNWMl/jxF/B1/KECN9
        RR57t1PmS4Ens9hwC8fCGI1Y4fyKv7WOgUlV670LDXTKmAuU0l1NfRGQi3cmjVKidYa0NxjrBjzeN
        eHjmOgUWhav0WCz9xY8enbbPeVXtW0MMsEgiB9Hq5Ojp6itdRQBJiywDbgtn7jeJO0YICL3rdQ1LD
        OqLOIl9Q==;
Received: from ip98-183-112-29.ok.ok.cox.net ([98.183.112.29]:54954 helo=[192.168.0.134])
        by vern.gendns.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.96)
        (envelope-from <david@lechnology.com>)
        id 1q1SYc-0001sF-08;
        Tue, 23 May 2023 10:00:11 -0400
Message-ID: <be50a724-280e-7827-91f4-88d16e1e295f@lechnology.com>
Date:   Tue, 23 May 2023 09:00:09 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] ARM: dts: Unify pinctrl-single pin group nodes for
 davinci
Content-Language: en-US
To:     Tony Lindgren <tony@atomide.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20230523090406.59632-1-tony@atomide.com>
From:   David Lechner <david@lechnology.com>
In-Reply-To: <20230523090406.59632-1-tony@atomide.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - vern.gendns.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lechnology.com
X-Get-Message-Sender-Via: vern.gendns.com: authenticated_id: davidmain+lechnology.com/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: vern.gendns.com: davidmain@lechnology.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/23/23 4:04 AM, Tony Lindgren wrote:
> We want to unify the pinctrl-single pin group nodes to use naming "pins".
> Otherwise non-standad pin group names will add make dtbs checks errors
> when the pinctrl-single yaml binding gets merged.
> 
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---

Reviewed-by: David Lechner <david@lechnology.com>

