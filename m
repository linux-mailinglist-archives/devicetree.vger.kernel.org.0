Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D6BF61FCBF
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 19:05:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231398AbiKGSFj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 13:05:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232632AbiKGSFG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 13:05:06 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2B9E197
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 10:02:14 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id v17so18867009edc.8
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 10:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zy6KiD5Z4xgeaMyT8tMJOaVUJeGYXHoL1ukSN84rOPM=;
        b=qao2Q8Qo2SUSZpgpxgvgH/DSzVoXULvNzCAprBjS9yddJMBW3/IXl1of9YlE5kYX9G
         ty1CK0TIelc9Yv+VDNauJjIxgMXqqn0fgIJgeQzW42RjU7LaQkRfBZteW/gM6bZQ28Ml
         XYElFuQ6mKbI4C/aSdJ1HrCOIXNHK7jXbOH2FaL2wiTlk+ZNpe6KMaqK6jEDZ62mRmBU
         hRnaOTyqVFoWd7m6d8T8qfji3xti34+16IDSagWW8lMHMiqTcF0oM5ZmrsvoeKWwDEvC
         sptT7G9jcFAzoL8Bz2T2UceAspG7AUHn9dt4Z2hGp5LurjeKbGSz+Y68HBqnVzbPAHwf
         hLtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zy6KiD5Z4xgeaMyT8tMJOaVUJeGYXHoL1ukSN84rOPM=;
        b=v8QLp8pYixEoBarg4WfrACjl30qh/YhQgfMKwgwILRJ2zXN8EQ3yPzShisBvKKQwXW
         sazSO840TBEaXuC7HWW6+BPiPGMFDT2Yl7ijzA458tpzivbg1oOE+Je7jD9+vgYFuKMT
         YmalR1kzfJM4XJPrL/eaoVkFVxMWX3tmgJifd9bU3vanBiar3O9jKvLSm8rpRoCLPIA1
         WlM+yOjARzOW6UYx3RhFopEPWT7tYXux7aSG1R8d8SxLFtj59p4UNDcNQIqVht0fDcc9
         qsVzCjFBwyEacZNhjFteHhdLd2kvIkH98n+wL6gV2Ro4oi7PQn2hM9X5/WSTgjx0CR9x
         sx3g==
X-Gm-Message-State: ACrzQf3TQbYV3nnrIpt8S1c3ljKev5dRmWZWS09dhmTq3AFUF6bLXl/T
        s9gpZMGumFbWRMeHJylRblY=
X-Google-Smtp-Source: AMsMyM6QRO4niT0rxj3uplCk/Upmuf/tSQMUMLszIcG+aOaDT0PqNDevgvIfJCS1b0Pzovid6u9LeA==
X-Received: by 2002:a05:6402:22f1:b0:462:f6eb:6c6b with SMTP id dn17-20020a05640222f100b00462f6eb6c6bmr51625087edb.365.1667844133550;
        Mon, 07 Nov 2022 10:02:13 -0800 (PST)
Received: from kista.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id 10-20020a170906210a00b0078d21574986sm3604788ejt.203.2022.11.07.10.02.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 10:02:13 -0800 (PST)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andre Przywara <andre.przywara@arm.com>
Cc:     =?ISO-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
        Icenowy Zheng <uwu@icenowy.me>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v2 08/10] dt-bindings: vendor-prefixes: add Lctech name
Date:   Mon, 07 Nov 2022 19:02:11 +0100
Message-ID: <3130446.5fSG56mABF@kista>
In-Reply-To: <20221107005433.11079-9-andre.przywara@arm.com>
References: <20221107005433.11079-1-andre.przywara@arm.com> <20221107005433.11079-9-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne ponedeljek, 07. november 2022 ob 01:54:31 CET je Andre Przywara 
napisal(a):
> Shenzen LC Technology [1] is a company making various boards and related
> products around IoT and AI technology.
> They used to use the "Cherry Pi" brand before.
> 
> Add it to the vendor prefixes list.
> 
> [1] http://www.chinalctech.com
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


