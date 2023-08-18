Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE05D780A4B
	for <lists+devicetree@lfdr.de>; Fri, 18 Aug 2023 12:39:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243623AbjHRKij (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 06:38:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356537AbjHRKhg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 06:37:36 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B93D046BD
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 03:37:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 485D365263
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 10:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B957C433C7;
        Fri, 18 Aug 2023 10:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692355025;
        bh=OP44zoyZRydQoPpmXwomo3eR9ok2A68yWmb4eibJNkk=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=gWXIivvX4aYpc+VGO4CHr2Zwg4FIRrqBBrgBgGNbHuNSZ0nYodXtxFzE4WHI/sp+B
         OEUuYDKMK3wiiR3oNf4XlTmUMWtbiZeoY/editeJEXgultsXmsnfij7YpfcqxDXqkB
         pkAs/bYqnYgluFAXNRZOvuFozh0CadVpeW8ePEPJhyf5+vPBPYGeyrgBrrBJkyHN7m
         BREU/1y1y7aBuh7r2bc2iQ03ruseMA9uFToedjQqFw9apBhVYE4JR25Xw+TdoK01pN
         Kp1XSsbcZVFrCC94pztfg414VqcxuadpUenjVSfnLTgxIT8A2UVrN0UHRHbv12VC/M
         wYbAxD3axGKUg==
Message-ID: <24f8b0c3-6f77-b4fd-0532-04bc0cd2eea6@kernel.org>
Date:   Fri, 18 Aug 2023 12:37:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v5 02/17] dt-bindings: gpu: Add Imagination Technologies
 PowerVR GPU
Content-Language: en-US
To:     Sarah Walker <sarah.walker@imgtec.com>, devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, Frank Binns <frank.binns@imgtec.com>
References: <20230816082725.164880-1-sarah.walker@imgtec.com>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230816082725.164880-1-sarah.walker@imgtec.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/08/2023 10:27, Sarah Walker wrote:
> Add the device tree binding documentation for the Series AXE GPU used in
> TI AM62 SoCs.
> 
> Co-developed-by: Frank Binns <frank.binns@imgtec.com>
> Signed-off-by: Frank Binns <frank.binns@imgtec.com>
> Signed-off-by: Sarah Walker <sarah.walker@imgtec.com>

This is a duplicated patch sent only to few people. The original patch
was sent to other people.

Such process won't work. You cannot send two of the same patches to
different set of people and expect they magically merge somewhere in the
cloud.

Best regards,
Krzysztof

