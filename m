Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA3335F34C9
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 19:47:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229599AbiJCRrP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 13:47:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229815AbiJCRqi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 13:46:38 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFD7123BE8
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 10:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1664819195;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=MtA+3tltQ/Pu6j9UWBtNmmPHCMxWKl2rTYLhck5QDqQ=;
        b=B/Gt+mBdaL2cQezmUBQ5HQWiisoDiHx9F+gOhudZ9cz7I7MJDvPZgj852CJBco+b8llNcv
        zrKpFP4rF7vr8QAa+4hR6Mm5NsMvEXbByasGkegdcx+E5IByqNmuOp5yHXVrWGLcqiWcC9
        2rRhhCGHbcQ+aP1BwTmN6bOxXFV91H0=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-73-LX4w01uWP8CDYoWugF1VtQ-1; Mon, 03 Oct 2022 13:46:32 -0400
X-MC-Unique: LX4w01uWP8CDYoWugF1VtQ-1
Received: by mail-io1-f71.google.com with SMTP id b9-20020a6be709000000b006a469cf388eso7322586ioh.19
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 10:46:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date;
        bh=MtA+3tltQ/Pu6j9UWBtNmmPHCMxWKl2rTYLhck5QDqQ=;
        b=O+aFV09XIZytHxyHHKE0K9600U0dwjvj7QnieLOo3L+ds/m5Py2nt/FmYtBhncTZ2B
         i02y7xg2MhqHQYe6+woGLZ8NsySWIs97PYptQw+Qp12u1iLE7CzEk4MuIXW4nASiyLEL
         N3/stRyAtX3qq6/n1ZDw4ONn+i3qBdljA+yzxBT+DHaPuof7fv/IMV8Ui41qnfUzkN15
         Eu0Y+Q37qN/WkIbnysmpzxpLq4YoWWEGSLiU6mVzRTIkjy8ZmQGmQTHmmw41ar3Cdvra
         mlXqtM0IhYYgXxDbBRVrJ+ka7XvUUfL1kMXWXHMPAXOOQDn0+Reow/uK8JbstHMk4Vmx
         RU+A==
X-Gm-Message-State: ACrzQf0XKYIfEIjv0DFeeTZHAxBGoKQvgEcAUtfobGg//uFWoYU1F8VE
        Nkh60DFYpi1slCOP8B04iwS18EMgb44wKM7NT+lvm29OD0Qus87K3eYT9AKd9Z5r5lfXHPMwYLr
        hwghA5uZwKxtGB4oXL+XShA==
X-Received: by 2002:a05:6638:1655:b0:35a:6ee2:402d with SMTP id a21-20020a056638165500b0035a6ee2402dmr10800149jat.138.1664819191534;
        Mon, 03 Oct 2022 10:46:31 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5FifwWL5T7TEBYUUsogaV1ix6DKF2KWcbNDZOJeBuvpP5FL6MipfFb6zDzBulpSqPkZReg9w==
X-Received: by 2002:a05:6638:1655:b0:35a:6ee2:402d with SMTP id a21-20020a056638165500b0035a6ee2402dmr10800135jat.138.1664819191364;
        Mon, 03 Oct 2022 10:46:31 -0700 (PDT)
Received: from x1 (c-98-239-145-235.hsd1.wv.comcast.net. [98.239.145.235])
        by smtp.gmail.com with ESMTPSA id m16-20020a92cad0000000b002f50fb937f0sm1339298ilq.27.2022.10.03.10.46.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Oct 2022 10:46:31 -0700 (PDT)
Date:   Mon, 3 Oct 2022 13:46:29 -0400
From:   Brian Masney <bmasney@redhat.com>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: fix UFS PHY serdes size
Message-ID: <Yzsf9eoH2A5Xr3bS@x1>
References: <20220915141601.18435-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220915141601.18435-1-johan+linaro@kernel.org>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 15, 2022 at 04:16:01PM +0200, Johan Hovold wrote:
> The size of the UFS PHY serdes register region is 0x1c8 and the
> corresponding 'reg' property should specifically not include the
> adjacent regions that are defined in the child node (e.g. tx and rx).
> 
> Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

This fixes an issue that I'm seeing on the QDrive3 in next-20220930.

Reviewed-by: Brian Masney <bmasney@redhat.com>

