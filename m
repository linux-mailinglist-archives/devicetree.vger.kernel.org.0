Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F5C34C0E6B
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 09:45:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236813AbiBWIpu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 03:45:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236341AbiBWIps (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 03:45:48 -0500
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E27F657BB
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 00:45:21 -0800 (PST)
Received: by mail-pg1-x536.google.com with SMTP id 195so19293296pgc.6
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 00:45:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QGn1GZnm6sj3nxCEfonQHesM4cU8J/GpzBSZSaF8NF0=;
        b=qL7VbzzR5dr1gTT/v8zmVe1NYi6boPLic3ogmDOjGXXkDZBKOHEx5+sh6JcrMVWyAu
         5MbwJNAo2Ug4HAHPdi+gLbHiSDGr+JtVyIWaYYuUnR5RRfQUJcNU7l56Ed/X7UEb7JMX
         8yv+voLy78F5xVyCUj9AxYIj0H+oMEBj8T4jfvXWmU1WWMy+sBp11DIwG6rSmuvY5BJ8
         BJ5R+ilmNjD7191eUiW4z4QNgvfLPd6yDRFZ2Hwjhq6wTNPXyIKXl6aHe4Va1fzNyR4I
         L49NADInVBN63T59dLRyyv3yjhuKFBwJXajxSLmmdsGsi5sIqOPA/icUj/imDejVMCH8
         l4QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QGn1GZnm6sj3nxCEfonQHesM4cU8J/GpzBSZSaF8NF0=;
        b=cMSl9/GLHjIncN8jPtZIreZcdigmqoFdHHB14GnhZykuBzw86/rD7h5F6GNfw0UZ5w
         l71jIfd6erV4/QlQiAOeh9FW03zdbCm7HorGJobCWA86go1AZVT/TQaaP4DNRvfGVveO
         TAgROqE9pkHqEV5UVgriJWBjmWOzq0rqptXD+2bdjEKXVktpe7UH4cmPcjSsvcZOEEaE
         WhresU7igQJRDrxIkJIZg6Q7PfrxHg3bauxqhG2Vxasw0lS+g68JPoBQGliIg3kM+3pv
         UrPJLyTID/s457ZD2x4X5iOisPoy1Tw9ZhGYYxa0saTAFNLk0wlyn0+Y5AMWkbGgOSKx
         OpPA==
X-Gm-Message-State: AOAM532ppWq4MHpdqtfUiE4SH57BU4y682f5XTF6aqIMHtyM7ZlEu7ag
        TymAFEgGJ2mUHXhBehyjFqM2MA==
X-Google-Smtp-Source: ABdhPJysodi5Wtt9nST6OQRsBmu1IrT/knQAMQA4IqW0HxXWA/+1f+K17OMbOb6mmucMzlRdZgKybw==
X-Received: by 2002:a62:84d3:0:b0:4e1:b5c:1dd4 with SMTP id k202-20020a6284d3000000b004e10b5c1dd4mr28567242pfd.20.1645605920985;
        Wed, 23 Feb 2022 00:45:20 -0800 (PST)
Received: from localhost ([223.184.83.228])
        by smtp.gmail.com with ESMTPSA id l12sm21538750pfc.182.2022.02.23.00.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Feb 2022 00:45:20 -0800 (PST)
Date:   Wed, 23 Feb 2022 14:15:18 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Lukasz Luba <lukasz.luba@arm.com>
Cc:     linux-kernel@vger.kernel.org, dietmar.eggemann@arm.com,
        rafael@kernel.org, daniel.lezcano@linaro.org, nm@ti.com,
        sboyd@kernel.org, mka@chromium.org, dianders@chromium.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: Re: [[PATCH v2 1/2] dt-bindings: opp: Add 'opp-microwatt' entry in
 the OPP
Message-ID: <20220223084518.jxyyilizgghpyxwq@vireshk-i7>
References: <20220222140746.12293-1-lukasz.luba@arm.com>
 <20220222140746.12293-2-lukasz.luba@arm.com>
 <20220223055006.zlcwco7oducggxjw@vireshk-i7>
 <ae28b0be-5b71-d53e-31ee-49d4d01a0910@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ae28b0be-5b71-d53e-31ee-49d4d01a0910@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23-02-22, 08:39, Lukasz Luba wrote:
> For the EM we need only one value. If there would be some other users
> of this field in future we might add the multiple power values support.
> Currently there is no need I would say, unless it's a hard requirement
> to be aligned with opp-microvolt.

This isn't really up to what the software wants to do (to some level yes it is).
The DT describes the hardware and should do so in an unambiguous way and it
shouldn't be required to update the bindings again and again. It should be done
just once, and in the right way possible.

If the power is actually per-regulator, then it should be present in that form.
The EM can just sum the up later on.

-- 
viresh
