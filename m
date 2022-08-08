Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B9C958C840
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 14:19:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242757AbiHHMTQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 08:19:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242684AbiHHMTP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 08:19:15 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2297814D0C
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 05:19:14 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id a11so4693444wmq.3
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 05:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc;
        bh=BU0eUpWvwjsciDbDnUCPcx6z5KF2k8GjlyBCulnxcOc=;
        b=iJo8Mjw+PRifkwxM3mvPJGOKlbx+IKSdW1z18bl4OxvzU6lVotY5E4FPx5V7PfQVZ2
         e5u6f+jsn67cFAL3yKhXBUZZtceAfVaWijVNgOaS7qaq7YZmGiQI0sCwD/c0n7hEma5u
         rxqwQFCvmvM42qtVV7G7uRAeGo9R8ztqOPVQ0tJD5xJZWBHOdi3gI0zgZDBOtbhyls91
         igmXXFodUHofaZhfN+UpPJ7GuMyZr8ogbvr774CRwKdmS6V0mupAhIxVXa/F3YBmv0HU
         fkUJ+I266I/Fpox9fSqdbs2NwJIYYAYYOT8E/gDDtU6BSENSHW2X3GVESUS2IPsr1xJP
         8U2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc;
        bh=BU0eUpWvwjsciDbDnUCPcx6z5KF2k8GjlyBCulnxcOc=;
        b=SXAV4O5xjG2/eOGr1T09Xwbfm5t7o+G5GXhhtXWv+Ko3rouIElrbtNW1PxpFiOgDXD
         1gd2lqiXRvaoJsheqOXT6xWs+kssJJRZXqVsd1TKYMxS39eHO5m9HjaQ5MgSZdGDyIoT
         92vOdofTBg86bebhHY0kmvVDP5pwpGhbIjdOZPuudxP2V+NZU5PjgCQ1til6de4JWdRo
         NL9YnNHWgF8YgTOhMnup48Hus7F4hkYwlnOgOJBN/GQgbAIVr9Z9sdAW8DlcEqH1CP+G
         dxpngAydO3wZtK7AjzYpsh02PMPOEPqsOK7Jo6qyBqikx3mL5KZi/KLLWGKGY41QeW1X
         HFpA==
X-Gm-Message-State: ACgBeo3Y+NuZLp4+hgmt65G+4u+vztdMM946RfGZgOG+Am2LW1ZeXZXS
        Qu6Cfq0MC72BJIFNxuCIF5C4GA==
X-Google-Smtp-Source: AA6agR6JDjefK+H+sW5x4qd7I2Vsv3DgpuOKdUabDEc4bp+UOQm9M+qGcTfZDsqwkCpzBLwgkmy39A==
X-Received: by 2002:a05:600c:3caa:b0:394:8fb8:716 with SMTP id bg42-20020a05600c3caa00b003948fb80716mr16742450wmb.105.1659961152644;
        Mon, 08 Aug 2022 05:19:12 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id be8-20020a05600c1e8800b003a3270735besm13595687wmb.28.2022.08.08.05.19.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Aug 2022 05:19:12 -0700 (PDT)
Date:   Mon, 8 Aug 2022 13:19:10 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Ben Dooks <ben.dooks@sifive.com>
Cc:     linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, u.kleine-koenig@pengutronix.de,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>,
        jarkko.nikula@linux.intel.com,
        William Salmon <william.salmon@sifive.com>,
        Jude Onyenegecha --subject-prefix=PATCH v3 
        <jude.onyenegecha@sifive.com>, Lee Jones <lee@kernel.org>
Subject: Re: DesignWare PWM support for device-tree probing
Message-ID: <YvD/PtkntcYosUUm@google.com>
References: <20220805165033.140958-1-ben.dooks@sifive.com>
 <YvDCwOPLoSdxorhZ@google.com>
 <YvDDHUJdBRSRjbRh@google.com>
 <b78e07bc-70ca-6ddd-5b80-2f6865d242ec@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b78e07bc-70ca-6ddd-5b80-2f6865d242ec@sifive.com>
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FSL_HELO_FAKE,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 08 Aug 2022, Ben Dooks wrote:

> On 08/08/2022 09:02, Lee Jones wrote:
> > On Mon, 08 Aug 2022, Lee Jones wrote:
> > 
> > > On Fri, 05 Aug 2022, Ben Dooks wrote:
> > > 
> > > > This series is tidying up and adding device-tree support for the
> > > > DesignWare DW-APB-timers block.
> > > > 
> > > > Changes:
> > > > 
> > > > v3:
> > > > - change the compatible name
> > > > - squash down pwm count patch
> > > > - fixup patch naming
> > > > 
> > > > v2:
> > > > - fix #pwm-cells count to be 3
> > > > - fix indetation
> > > > - merge the two clock patches
> > > > - add HAS_IOMEM as a config dependency
> > > 
> > > Can you use the front-cover option provided by Git please Ben?
> > 
> > git format-patch --cover-letter ...
> 
> I thought git-send-email --compose did that.

gse's --compose will open up your editor on the series before sending.

gfp's --cover-letter creates the 0th patch with a nice format.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
