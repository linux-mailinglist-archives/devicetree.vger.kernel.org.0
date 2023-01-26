Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFB7267CA29
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 12:40:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237327AbjAZLkW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 06:40:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237283AbjAZLkV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 06:40:21 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0463B3401E
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 03:40:20 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id e19-20020a05600c439300b003db1cac0c1fso3060682wmn.5
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 03:40:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=79I3qX7WorpnGCtocTNXJGOFGCxWkI/DAjgFGqY8pmw=;
        b=zi7czjMCjCY1Xwlr1W4/Dno+Dsq8poXwf5ka+JeXV99URT+aO7gJYo8UWmCw5/0upw
         jjR4cuLSnmOn7OvlIHObd/SGn4atIsevM/auK6vxoULiXLTtBfQIP9dHl6198xM0CixY
         DgUVE6gllYqWh5KTedizqP4EstmQ9G23b1ATccR4zR0btlbaIq6QWdpJf0U/4rDw7QQ1
         4uWVV3r4MLxzuzZijYskvwHlZCZSqdgRqD0cr7V0Pu/15IfdZYLpbXnH8uXh6jwc8Dkc
         CjOB0FUpL/SF/g/rBvmZiBQTt2Z01ee5tnikI7jid4DKNBzoXjlOuth0AjawOrk59+xW
         7MCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=79I3qX7WorpnGCtocTNXJGOFGCxWkI/DAjgFGqY8pmw=;
        b=ZkPvVJVgx8JuZcV9uxVYPDWiX4OKedoMy8/ERKYzndMjyUe5Me4dXbLKNF0+OEwUGq
         Rx29HUvrCsvKfVgiEKgZc3z7qWVwu1syO9CQKTzNBLDZa0/OpNF+8cOKUxKZyE4Y0/tZ
         BuAUm9HXiFcxzS4LKGqtnw/VtDHcWtXvpD4IELf+MZCxA4nblLzfcpXgb3Te/AuinCur
         x9LK41nmf1a8Q77UTLXwukgX4tZvSk8LDJ3Cx5lrNoMWA4iFLSV6O2pGtxBR+eZcd827
         BDF2KMfZuCDuOBuBACPdVhEpP+JWke7yhiYgrnpGiY3TIQnwRqZ0QTk6cTTqTqt5hm+h
         vL1w==
X-Gm-Message-State: AFqh2krjdg2d2VseDgo7yY15QpaiZ6fkd1CngcItr9yuOAxvJtWmgoU2
        dowfeiwVvPtwB9KusLl8fATMPg==
X-Google-Smtp-Source: AMrXdXuz1X8Z3gE5ArmKdSE9D4XLRnuS5VaeED9k+4FDG6W8uGSdgLX4avRth74OO3so9yFpLw+A7g==
X-Received: by 2002:a05:600c:3d10:b0:3da:e4c:2a3c with SMTP id bh16-20020a05600c3d1000b003da0e4c2a3cmr35452487wmb.41.1674733218565;
        Thu, 26 Jan 2023 03:40:18 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id d1-20020adfe2c1000000b002bfba730b0fsm1069898wrj.65.2023.01.26.03.40.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 03:40:18 -0800 (PST)
Message-ID: <e404760c-6442-7406-c46f-48354adda2e5@linaro.org>
Date:   Thu, 26 Jan 2023 12:40:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH RESEND linux-next v4.1 4/4] dt-bindings: usb: Fix
 properties for VL817 hub controller
Content-Language: en-US
To:     Anand Moon <linux.amoon@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230125143404.1424-1-linux.amoon@gmail.com>
 <20230125143404.1424-5-linux.amoon@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230125143404.1424-5-linux.amoon@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/01/2023 15:34, Anand Moon wrote:
> Cleanup by removing unneeded quotes from refs and
> add maxItems to reset-gpios and fix the required list.
> 
> Fixes: 31360c28dfdd ("dt-bindings: usb: Add binding for Via lab VL817 hub controller")
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>

Now it's correct.


> ---

Subject: dt-bindings: usb: vialab,vl817: Cleanup compatible, reset-gpios
and required

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

