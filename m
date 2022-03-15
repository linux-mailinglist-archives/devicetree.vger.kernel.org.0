Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BE584D98E6
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 11:36:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347148AbiCOKiF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 06:38:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347088AbiCOKiE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 06:38:04 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A75664ECD8
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 03:36:51 -0700 (PDT)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4F91A3F325
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 10:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647340609;
        bh=TEi9FBbJRZ98ujLdP/Lz9ClVk8P7w5er1AYT1Hftf6A=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=MfwiNKli0xUAvhwoAWkyB2P22xn0Zd7WiLuT0f2DBv7yZ8vKvUNMocqO4NypKd/m2
         KhaE/vtty+f/XTK/lSBBdUD7HaiES2sdJewEY5l00TQXlcUEM/xic2KhdbL30/LHn4
         iV/0oQHUMONKcY8WE4nFDbMKyGazxcjiPdiyLDuKRBW7rir7JUWc91jiRobP6FiClR
         7L1Qw7eC7upNWlhP+NBZ04Y/raoHHfbnK2J4puxvlT9w7VYIQxkH9UE1qqBNiB6xNs
         8lWK5+zQjH0qdZrLucovfpuHZqvmBkHrryebCZ8KKGA9/KT5sDkAN3cDOnA62szP+D
         Grc+77YMKCLlg==
Received: by mail-ed1-f72.google.com with SMTP id l14-20020a056402344e00b0041593c729adso10374793edc.18
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 03:36:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TEi9FBbJRZ98ujLdP/Lz9ClVk8P7w5er1AYT1Hftf6A=;
        b=ax23v6D62teFxREhZjz4NhN8vf1GAlw4v7rwuEceW6PATEw0VJRE+JpwldEtrdCvDA
         WYK3epdQFz2M4H58HZ1fUCNoHivo+s7KDX8v9Pnoj+IdxYfSZAryn6atXraQajaXJe8u
         W4kmKuuoOUWKIvEWNOwvrpBClCYE44UKweKwUQGXHoWHmm8cMQ+2ue6gE34JKTNSgLZ1
         LXzRh5ddBmljobce34mk0fFUQNKb0fPsGcIfiPd5MzRWGZIKBvfRrm38raaz5OKwJjXx
         EP0bDgTeGnYfayQ7eCxHrjT9X9umPtKBiJ8iqZOUUBCHLCmgImo3MB8cEGncs1wpK9VL
         i+EA==
X-Gm-Message-State: AOAM533YqJhpNXQdKIasN+VUHqyeRoLCw3FpvS4Nx6YGPjkOcBNDYJ8Q
        oRcj9ZmJanogtKt6wEDyiibCDWDSeBlAUNxtkzU7vYdLgUdT73xYibiykaC8vn49DyyZFFQjpu+
        4XPKpMnZfzwJH5rXwU+pokNd1xSaUiOpTR6DiHrE=
X-Received: by 2002:aa7:d295:0:b0:416:438e:d9c4 with SMTP id w21-20020aa7d295000000b00416438ed9c4mr25157408edq.98.1647340609086;
        Tue, 15 Mar 2022 03:36:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyNAdezzJXlvUWpVXxB4T7w7pvN/7+3r1jrwVFjSzPbTqD5zxBdf5ZWDjZyxsdEDeC/bjygzg==
X-Received: by 2002:aa7:d295:0:b0:416:438e:d9c4 with SMTP id w21-20020aa7d295000000b00416438ed9c4mr25157391edq.98.1647340608923;
        Tue, 15 Mar 2022 03:36:48 -0700 (PDT)
Received: from [192.168.0.155] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.googlemail.com with ESMTPSA id o3-20020a17090637c300b006d8631b2935sm7869716ejc.186.2022.03.15.03.36.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Mar 2022 03:36:48 -0700 (PDT)
Message-ID: <bcda63b6-16cd-6514-42e7-fe09f5a5fb34@canonical.com>
Date:   Tue, 15 Mar 2022 11:36:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v4 2/3] dt-bindings: edac: nuvoton: add NPCM memory
 controller
Content-Language: en-US
To:     Medad CChien <medadyoung@gmail.com>, rric@kernel.org,
        james.morse@arm.com, tony.luck@intel.com, mchehab@kernel.org,
        bp@alien8.de, robh+dt@kernel.org, benjaminfair@google.com,
        yuenn@google.com, venture@google.com, KWLIU@nuvoton.com,
        YSCHU@nuvoton.com, JJLIU0@nuvoton.com, KFTING@nuvoton.com,
        avifishman70@gmail.com, tmaimon77@gmail.com, tali.perry1@gmail.com,
        ctcchien@nuvoton.com
Cc:     linux-edac@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, openbmc@lists.ozlabs.org
References: <20220315055504.27671-1-ctcchien@nuvoton.com>
 <20220315055504.27671-3-ctcchien@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220315055504.27671-3-ctcchien@nuvoton.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/03/2022 06:55, Medad CChien wrote:
> Added device tree binding documentation for Nuvoton BMC
> NPCM memory controller.
> 
> Signed-off-by: Medad CChien <ctcchien@nuvoton.com>
> ---
>  .../edac/nuvoton,npcm-memory-controller.yaml  | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/edac/nuvoton,npcm-memory-controller.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
