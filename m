Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4C5B4F9E45
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 22:38:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233991AbiDHUke (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 16:40:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233905AbiDHUkd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 16:40:33 -0400
Received: from smtp.domeneshop.no (smtp.domeneshop.no [IPv6:2a01:5b40:0:3005::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B559C22BCC
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 13:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
        ; s=ds202112; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
        References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=9ad11Hxg7p4/Xxz832z3DnrxaFw+2TZz4oGvGzBAtt4=; b=Gfy9mzkmc/KAlzexruSP2iljLN
        p18VSKJzE5f9nIyyWGawZ5qbHLFbec5daOM7moJbjOuNpgpGBGRFRzrhr6g1c/K4fXSWLWRK9FaWG
        vJHnRBSYQhHPZjGCvM94N7akSUnzQZisd0CcWPNcXbmyOSe4Z9+3SPTTFgN16vL+u+CELmwCjbv4Q
        L0QxG6hoogFHGrVWmiaLaa0O7y+FwnequAePdCuhaUEoHT8AHzvmfoqxJEeXfl9DaVuvc9OAGgRfF
        7izpW/B8nVpOKmkZSsosUOxWu6SCT0d+69cv3XkV6Psddn2WbZpG3KI8ZWP2EkC5mrZkiMQczxIT+
        neIEGOiw==;
Received: from [2a01:799:961:d200:cca0:57ac:c55d:a485] (port=61279)
        by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <noralf@tronnes.org>)
        id 1ncvNB-0001ce-C0; Fri, 08 Apr 2022 22:38:25 +0200
Message-ID: <fb9ce847-8fcc-4e39-b766-678c9afe05db@tronnes.org>
Date:   Fri, 8 Apr 2022 22:38:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: display: panel: mipi-dbi-spi: Make
 width-mm/height-mm mandatory
To:     Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org
Cc:     robert.foss@linaro.org,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        Dmitry Osipenko <digetx@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
References: <20220404192105.12547-1-marex@denx.de>
 <2d4ef041-8339-006e-3e94-8ff16309cba7@tronnes.org>
 <257ef1da-dd1f-cec6-2950-42990750af43@denx.de>
From:   =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
In-Reply-To: <257ef1da-dd1f-cec6-2950-42990750af43@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Den 08.04.2022 19.55, skrev Marek Vasut:
> On 4/8/22 16:50, Noralf Trønnes wrote:
>> Hi Marek,
> 
> Hi,
> 
>> I see that you have commit rights so I assume you will be applying this
>> patch.
> 
> It's already in drm-misc-fixes:
> 
> https://cgit.freedesktop.org/drm/drm-misc/log/?h=drm-misc-fixes
> 
> https://cgit.freedesktop.org/drm/drm-misc/commit/?h=drm-misc-fixes&id=1ecc0c09f19f8e10a2c52676f8ca47c28c9f73c7
> 

Thanks.
