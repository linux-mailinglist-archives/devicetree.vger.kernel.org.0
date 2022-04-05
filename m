Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AEF0F4F248E
	for <lists+devicetree@lfdr.de>; Tue,  5 Apr 2022 09:20:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230284AbiDEHWs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Apr 2022 03:22:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232144AbiDEHVc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Apr 2022 03:21:32 -0400
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com [IPv6:2607:f8b0:4864:20::835])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DCD115A2A
        for <devicetree@vger.kernel.org>; Tue,  5 Apr 2022 00:18:41 -0700 (PDT)
Received: by mail-qt1-x835.google.com with SMTP id t2so9723551qtw.9
        for <devicetree@vger.kernel.org>; Tue, 05 Apr 2022 00:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=tH5y1LP3eo6EuS4TdiUUXJPk8S4V/nCHB9ptl16xjQk=;
        b=SOGxa1FOQ2cYLonNYxGKqYc8Cmhza2hDARSnb9mGbeNm/I2MarVZtDGeyxL2yV4ADW
         CE2Pg8lUKuzMPcXYd+l07Mb+lHySwcXsBz0XAG9BdkpAqQ8QV6Y/ZQZZATUojeVtiLLc
         VUV00J9kn1R9g4Tng2Z5dR1sUaxUeGIPhn1qG1Y0KGO2OLwFa8OcQkgQq7XNTkonCUhz
         PatfjKJHzUUawIdXl1v4909I3F/rAeTuScZSuuLSBBrQHVNOPdq6fc3fXrAkqGp65UEZ
         L8CTgFZdfjOnDDNY4/5m9UamV3xhJ0yrqtuwqAmYKlwYNPXwZzK2qVQIsGE/ijRsWfNP
         PGeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=tH5y1LP3eo6EuS4TdiUUXJPk8S4V/nCHB9ptl16xjQk=;
        b=ZF3KZxAlTlOIQ3kxDpkfGUdgFgQfZ7nVR0re0XJKdSciUPnRhN2gQWjcdDhLN8K/IQ
         PXfxvWjxxc6eDZavYNmSrLr2X/c02t2+bcKXIUG0xs3rCDel11HSdc8TR/GCYdzwo4Dq
         gMyxcF9MeMhOY2TXf+5JHgyAyZjyHpJZw2ec0Imgv+3rZfJRehwpnXVK8jJHlKSZandt
         aofOaVHn6Ng0IbCCbI3jTzCdhPmz8sDKUcTHHJtyI7h++CXB1fBb+6qV94ZY6mqdcmOu
         mrLmCCYJnMoG+wuETcoJUuyxmNv80D8Upql2Pt6O8db7lizUKKHbiyyCe01XyARygLZ9
         29QQ==
X-Gm-Message-State: AOAM5338TQm70h5mIs27oYydp7JmfqAngfVTxmOn/yE0s+S9OaONDvaS
        PatDY05cM4ENcvJSlWC/l7L65WNml823q1XZ
X-Google-Smtp-Source: ABdhPJz5xf+QOeCZLaHMEz/D+uXDqHnb+rduY09A27ff8/FpLS2BqFBXMNBGXOXUJ4vLrbu5LoSVaw==
X-Received: by 2002:a05:622a:178a:b0:2e1:e7b8:e52e with SMTP id s10-20020a05622a178a00b002e1e7b8e52emr1798610qtk.464.1649143120646;
        Tue, 05 Apr 2022 00:18:40 -0700 (PDT)
Received: from ?IPv6:2003:f6:ef00:8400:3d36:58a:667a:1da9? (p200300f6ef0084003d36058a667a1da9.dip0.t-ipconnect.de. [2003:f6:ef00:8400:3d36:58a:667a:1da9])
        by smtp.gmail.com with ESMTPSA id r64-20020a37a843000000b0067b0cf40b18sm7868869qke.69.2022.04.05.00.18.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Apr 2022 00:18:40 -0700 (PDT)
Message-ID: <9bde64d0c05a37e72fabbeb39d8d2fe099526917.camel@gmail.com>
Subject: Re: [PATCH] of: overlay: do not break notify on NOTIFY_OK
From:   Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To:     Frank Rowand <frowand.list@gmail.com>,
        Nuno =?ISO-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
        devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>
Date:   Tue, 05 Apr 2022 09:19:20 +0200
In-Reply-To: <01e77fbd-5c26-6b15-be1f-f962aa4190c6@gmail.com>
References: <20220404074055.95618-1-nuno.sa@analog.com>
         <01e77fbd-5c26-6b15-be1f-f962aa4190c6@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2022-04-04 at 13:10 -0500, Frank Rowand wrote:
> On 4/4/22 02:40, Nuno Sá wrote:
> > We should not break overlay notifications on NOTIFY_OK otherwise we
> > might
> > break on the first fragment. As NOTIFY_OK is not zero, we need to
> > account for that when looking for errors.
> 
> It's been a long time since I've looked at notifiers, it will take me
> some time to
> review this.
> 
> -Frank
> 
> > 

Yeah, it was also my first time looking at of dynamic code. But it just
didn't felt right to stop fragmment notifications if someone returns
NOTIFY_OK. In fact, I'm starting to think that even if someone wants to
NOTIFY_STOP on the current fragment, that should not mean we should not
send notifications for the remaining ones. So, maybe the right patch is
actually something like:

ret = blocking_notifier_call_chain()
if (notifier_to_errno(ret))
    return notifier_to_errno(ret);

This would also be more in line (not totally identical) with
'__of_changeset_revert_notify()'.

- Nuno Sá

> 
> 

