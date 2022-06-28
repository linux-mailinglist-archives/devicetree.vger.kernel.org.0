Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13CCB55E9C8
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 18:42:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231688AbiF1QdW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 12:33:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232477AbiF1QcT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 12:32:19 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D77C2AC60
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 09:24:32 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id c4so11514058plc.8
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 09:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Z5BcV2p4g91GdyamF8axgVE7hLlGEPkBqEaEQNzdr2k=;
        b=J774NmZlTvU4BeLH8+BOgy1iqEJJPgKcXSz7GY49r1Y71BxcoJ1Tuww2N2SJn0AJwv
         KBd7e86dzPzlCKJgDNczjEHnp6qSAhIUxcvM2iuD/FQIp/1zvW3/P5sqTzmF59aw/m0r
         wz1rEdJMNq6ji1gYNXLI4xhunEFbFWs6x/84Yw5fJN3+VDC2zkQdHjY0PpTJc5fN6PQy
         VuFbithqxmrFK8aAaiyLRjjtUa1YNJXSWGVuvC92GoGJRhrmMjxDZcgLi8ypqrcvJSqi
         zlA/WF99Wm5ibLejxD0LKCS8nn+CAWBV13uiWdyFi2X3+7veLI2hsU3mTW2+10bhFqIq
         t6xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Z5BcV2p4g91GdyamF8axgVE7hLlGEPkBqEaEQNzdr2k=;
        b=CxfH0Tn44W3uinKHnLHafUIkmhXhh+a3e6Z6XZHBphYOzKLXcSUnWpCB5b7u/JYcNQ
         8mDZNFmzMv7wkCbPeAGK/8SHGFVtmPwx51MDg0RCvyVW42IWpy01jrhMI7TxbtpLYB69
         +ZHdE5bZLi/N05KQOFBw1jtAFhCcfRpvCOUUph48yy5ARiFCksKdJ95BYBxRAadub4nd
         Y2sqCiKWBDBgacqtCZbNgVln+nfd98YIodTb+2WjAjWh1iZUuz/ogMtTF73UwAkRFMLg
         ZdKfFsgel55LTwsvAoYqYi7zaGALxQD1xZeBEFb0YJGYqixtDWEGf2/a9RGkivG/1xk4
         8QfA==
X-Gm-Message-State: AJIora+T4kE+JdhTTHko/AHfnJjkWNFbAVOp8ACQOrVqKd091fEVTAT/
        T70tGQe3k4Lhbk5nE6HA72c=
X-Google-Smtp-Source: AGRyM1spRQ7E6OaSlBsa7Y2lWQSTNW7fRUZNkvCTvFDo46NgJvttNcqKDBfyLRJNsk0lWpYLf5jgHQ==
X-Received: by 2002:a17:90b:3e86:b0:1ec:f7e8:e4e4 with SMTP id rj6-20020a17090b3e8600b001ecf7e8e4e4mr458110pjb.218.1656433471885;
        Tue, 28 Jun 2022 09:24:31 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id a11-20020a1709027e4b00b0016a3b5a46f0sm9556401pln.241.2022.06.28.09.24.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jun 2022 09:24:31 -0700 (PDT)
Message-ID: <bc9eafee-188b-9a9e-db7b-8c9decd6eeee@gmail.com>
Date:   Tue, 28 Jun 2022 09:24:26 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH V4 07/11] mfd: bcm2835-pm: Add support for BCM2711
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
 <20220625113619.15944-8-stefan.wahren@i2se.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220625113619.15944-8-stefan.wahren@i2se.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/25/22 04:36, Stefan Wahren wrote:
> In BCM2711 the new RPiVid ASB took over V3D. The old ASB is still present
> with the ISP and H264 bits, and V3D is in the same place in the new ASB
> as the old one.
> 
> As per the devicetree bindings, BCM2711 will provide both the old and
> new ASB resources, so get both of them and pass them into
> 'bcm2835-power,' which will take care of selecting which one to use
> accordingly.
> 
> Since the RPiVid ASB's resources were being provided prior to formalizing
> the bindings[1], also support the old DT files that didn't use
> 'reg-names.'
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
