Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 261BD6768A0
	for <lists+devicetree@lfdr.de>; Sat, 21 Jan 2023 20:55:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229675AbjAUTzZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Jan 2023 14:55:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbjAUTzY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 Jan 2023 14:55:24 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C37841E9EB
        for <devicetree@vger.kernel.org>; Sat, 21 Jan 2023 11:55:23 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id c10-20020a05600c0a4a00b003db0636ff84so5948631wmq.0
        for <devicetree@vger.kernel.org>; Sat, 21 Jan 2023 11:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EaelaaNeN3OfQXMySXE7wagjlLs2lpzTiQXcACzVApA=;
        b=IS7A9yuQJRbVj3mGZIyREmth1O4MyA4S8dQHUI39Eqfd0FtPXQaZv4eiou9zp4VSmJ
         JJAbh+Cd+W4+uLpn5URrgouPhKQiU8ZQv3NPi+Ac81FVx9I3FFhOenvQWyfcxP7eteqg
         XFVSGiRUaKwU9KKr0zvZc8eUOtJdBE2LhgWv6e0MOOtZi1g2icYqMeYZ3ElZ86hKIVE7
         qiAI5k2iSvPqfRNgCQHpyHwhsANsMnmfo/Gmb/P4SIIHshKnE+I/1mFTGb9LZUXPlDFu
         syqfQvoU/JoOnU6aZWouE7zupdo53xaJxKcmDa9DXcZfhIDiuvybZd/jSjSexZX+TQn+
         /SIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EaelaaNeN3OfQXMySXE7wagjlLs2lpzTiQXcACzVApA=;
        b=zEMMknrMT6zzTZS8r8yQC+1fYaxX1V5Fk+r7+HPoAl7xYeh1ZPSipGzK8Z0V6RkdKt
         HgBvJ0e+588htPQZH/J6cRCNg6UFZuv0g5OXwZQ0ZMYa3LlULqsevl+b+hRlHjG/i+IU
         Mlc/K15WiCDUzArxmvCMguMgCIEjjmGFwfssqGGacydJht71JPM9BYijAwxoJcpHG2qI
         q7vnD/1HVnXl+CQwbj/SFcQeNdjQdMWUS0S4F2v2rWidsObcS1CfgF3t6Sipx3NFlcEK
         bFpev0XoMVY3YSqNbqEs2H1WR/PswkLZNz7OUA0RhZAlPdNlbJ6SIpzrPfd3NxfaIB3d
         xhZA==
X-Gm-Message-State: AFqh2kq4dVfFlrNs/2/0nxuqL2dqpblzkqzS/y+JichAyYCzhR3v3qDU
        /plQ2v5chOw2K0Wj8haDHyMVKA==
X-Google-Smtp-Source: AMrXdXvPv224BVtCYOpVERSbQ8HGcnqINX2S+kzC6yBPcTxr1hj0V4T5EpN2foz/WFz3hVixx7Na0g==
X-Received: by 2002:a05:600c:6011:b0:3cf:85f7:bbc4 with SMTP id az17-20020a05600c601100b003cf85f7bbc4mr18486899wmb.2.1674330922408;
        Sat, 21 Jan 2023 11:55:22 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id x15-20020a05600c188f00b003db122d5ac2sm5773824wmp.15.2023.01.21.11.55.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jan 2023 11:55:21 -0800 (PST)
Message-ID: <3dc9b1e6-8c4a-9962-47d3-823e24115976@linaro.org>
Date:   Sat, 21 Jan 2023 20:55:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 2/2] dt-bindings: arm: Document the rest of i.MX28 based
 boards
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        =?UTF-8?Q?S=c3=a9bastien_Szymanski?= 
        <sebastien.szymanski@armadeus.com>,
        Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230121140053.10242-1-stefan.wahren@i2se.com>
 <20230121140053.10242-2-stefan.wahren@i2se.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230121140053.10242-2-stefan.wahren@i2se.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/01/2023 15:00, Stefan Wahren wrote:
> Not all compatibles of i.MX28 based boards are documented, which
> cause dtbs_check warnings. So add the missing compatibles to
> fsl.yaml.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

