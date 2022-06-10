Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A82FE545BC7
	for <lists+devicetree@lfdr.de>; Fri, 10 Jun 2022 07:44:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240043AbiFJFoq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jun 2022 01:44:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234935AbiFJFop (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jun 2022 01:44:45 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id CEEB633A1A
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 22:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654839884;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=ShE1FlsmSfqxYvr7PfIooFDqvA9+xWO6036Ml2D5cEU=;
        b=KpXroa9o+vUYkImFKMftHiAkcN9FCj7BVs7d4V5yM9f4I8L/Ko+Kt6pS5lkkBDyI5ly2fQ
        q3i4/WLoOEJC6JmoOGt7VjFpMhfYeYlFsrRL4wh5cwSFWeW9RMschlvNfona2bmGwgSTf5
        2iuzxBduB0Cx1gHfkjU1jWQDwkJik/o=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-328-W_HU--imMVijM-JNMYlpRQ-1; Fri, 10 Jun 2022 01:44:42 -0400
X-MC-Unique: W_HU--imMVijM-JNMYlpRQ-1
Received: by mail-wm1-f72.google.com with SMTP id az7-20020a05600c600700b0039c3ed7fa89so758224wmb.8
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 22:44:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ShE1FlsmSfqxYvr7PfIooFDqvA9+xWO6036Ml2D5cEU=;
        b=aSrHuwSnygtSNvTByfgZuPiCAGN1WCOempV4lgdIodIyGYvXQMhhYPAAG/Xv/L6sC5
         gFI1YNOwFPmjMIBM+WL1A5K+BdEsbtuteXvg6R4yXiu7c58gHmLbcUmTXLACng595AKH
         TqDKwhXy6Af5XKlifggH+wf5322MlGYeByZTn83OSTN/i52+xZWrXzcmZFJEDX7db56S
         gLB4X2hJBbsYAOhn1oETJp4PdtRMJNT6cTO+1xOC91yirlfNkdzW/VQQnYmqT/cvSHgw
         maa55tU80OYkPUTzK/R8y1DrA8OiS9/mn0jsOYSVaKweMYkpA02rsiVdoJkGntN4Sjf3
         P5ig==
X-Gm-Message-State: AOAM531IA2/EIU4iw0+4V1buu8TRJNigKWMig26XHTRbvJ1aabTEkdIH
        5l2S3Mi3hLFkR1saMEHlRUcUSRUy1lakYk+9lowHWICYsEr8UZJRt81701RzE0ztJwjBAukZrtt
        NSjBImHcZCJH/CJwoA8esng==
X-Received: by 2002:a5d:4d01:0:b0:219:e782:786e with SMTP id z1-20020a5d4d01000000b00219e782786emr1109607wrt.29.1654839881184;
        Thu, 09 Jun 2022 22:44:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxEmWQHVgI7mLEv3SkzwqsG0Oxbqj8p8QyhoSd4ME6IUhU+HW5jSNN0aKke5wjImdfMPeuohQ==
X-Received: by 2002:a5d:4d01:0:b0:219:e782:786e with SMTP id z1-20020a5d4d01000000b00219e782786emr1109594wrt.29.1654839880990;
        Thu, 09 Jun 2022 22:44:40 -0700 (PDT)
Received: from redhat.com ([212.116.178.142])
        by smtp.gmail.com with ESMTPSA id q9-20020a5d6589000000b00219e758ff4fsm666864wru.59.2022.06.09.22.44.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 22:44:39 -0700 (PDT)
Date:   Fri, 10 Jun 2022 01:44:36 -0400
From:   "Michael S. Tsirkin" <mst@redhat.com>
To:     Minghao Xue <quic_mingxue@quicinc.com>
Cc:     krzysztof.kozlowski@linaro.org, jasowang@redhat.com,
        robh+dt@kernel.org, jean-philippe@linaro.org,
        virtualization@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_ztu@quicinc.com
Subject: Re: [PATCH v2 1/2] dt-bindings: virtio: mmio: add optional
 wakeup-source property
Message-ID: <20220610014330-mutt-send-email-mst@kernel.org>
References: <20220325015945.GA17578@mingxue-gv.qualcomm.com>
 <20220328164228-mutt-send-email-mst@kernel.org>
 <20220329074610.GA20342@mingxue-gv.qualcomm.com>
 <a35529be-d9cb-9913-76aa-653faed87b54@linaro.org>
 <20220519071958.GA24236@mingxue-gv.qualcomm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220519071958.GA24236@mingxue-gv.qualcomm.com>
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 19, 2022 at 03:23:02PM +0800, Minghao Xue wrote:
> On Tue, Mar 29, 2022 at 09:59:31AM +0200, Krzysztof Kozlowski wrote:
> > On 29/03/2022 09:46, Minghao Xue wrote:
> > > On Mon, Mar 28, 2022 at 04:42:59PM -0400, Michael S. Tsirkin wrote:
> > >> On Fri, Mar 25, 2022 at 09:59:45AM +0800, Minghao Xue wrote:
> > >>> Some systems want to set the interrupt of virtio_mmio device
> > >>> as a wakeup source. On such systems, we'll use the existence
> > >>> of the "wakeup-source" property as a signal of requirement.
> > >>>
> > >>> Signed-off-by: Minghao Xue <quic_mingxue@quicinc.com>
> > >>
> > >> I don't have enough of a clue about dt to review this.
> > >> Pls get some acks from people with DT expertise.
> > >>
> > > Hi Michael,
> > > I had a discussion with Krzysztof on the first version of patch. And we've
> > > got aligned. 
> > > 
> > 
> > I thought I reviewed this and provided an ack, but apparently I did not.
> > Sorry for late response.
> > 
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > 
> > Best regards,
> > Krzysztof
> 
> Hi Michael and Jason,
> As this patch has been reviewed by Krzysztof. Would you help upstream
> these two patches? And is there any progress on it?
> 
> Regards,
> Minghao

Hi!
Sorry about the delay - the issue with the patchset is it was not
threaded correctly and so can not get handled properly by
automated scripts. Can you please repost threading properly,
preferably with a cover letter?

-- 
MST

