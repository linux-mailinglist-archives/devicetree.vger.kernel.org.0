Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6F746E2774
	for <lists+devicetree@lfdr.de>; Fri, 14 Apr 2023 17:52:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230373AbjDNPw5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Apr 2023 11:52:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbjDNPwy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Apr 2023 11:52:54 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC650B446
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 08:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1681487524;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=ATzwgaslzQU3gPsTLdjNRzR08gZk0kKwHmUAOWcuyho=;
        b=IoYZJBxK32pNT0xoodwh3nKL7crrsOfksSv913xz76pnmYpw/QXcQDaIrr/tb6mNIIv1kW
        p0+CFqOLLqo+FdC5tiso1S+jP53QWQxqDS4/DjBdO+NsJjH0Lk9vAyW2CAFfdiuOPJsMTa
        aYLJViNWnd4GMiXncd7pTVh9hHz5eaM=
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-343-bGndOsEbN_us6xKjufGkFQ-1; Fri, 14 Apr 2023 11:52:03 -0400
X-MC-Unique: bGndOsEbN_us6xKjufGkFQ-1
Received: by mail-ot1-f71.google.com with SMTP id d25-20020a05683018f900b006a13cc62b7eso3369002otf.3
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 08:52:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681487523; x=1684079523;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ATzwgaslzQU3gPsTLdjNRzR08gZk0kKwHmUAOWcuyho=;
        b=bR0PpYGM5QJHTdVigvKkpox0Znn5ZbCLQOJBnrGwO/wu5AsqczHD18GL2vxKmbn6Jd
         8PxICiqIfkWoFLUwwaLFkzyGWEk72ef/ZTXr42j9V5p15Mj/SyYPJnM9UQhXKjLElLK4
         ypX/St9SufxjXvQcBhgQ7NLElj6H7mg/JxApEnMuCUZWstDM0WjRCNGEVd4gJHqhMazK
         bMb2oOe8lO/haLnrVvQmhWtjU2OzfD9bmu1SiX6Wb8bHcQtxR/shied2+v8qEviKQrvy
         WDEfG1K0gk2xjakxw5FssoV7YKntu62hwQGWw3Kc4Z1TasMr05L2MHwYQumip9xemrhn
         eCXA==
X-Gm-Message-State: AAQBX9c7nL8bVFnRPzsTaYhkcNwst18ESWNwYe8Tt4bQec3IMbs1Oxn6
        nyOLDY0oPQk9OFRCCu2eHx2Ro01GYVa0oMZoIi/5tt5iVhaUuL+9muiKR49CcZFBELX0xUCxQvI
        ixCRhJXMBW7bP9WQCKAKljQ==
X-Received: by 2002:a54:4601:0:b0:389:4f7b:949d with SMTP id p1-20020a544601000000b003894f7b949dmr2828318oip.22.1681487522999;
        Fri, 14 Apr 2023 08:52:02 -0700 (PDT)
X-Google-Smtp-Source: AKy350a0ymS28sAALQ4gSVn0pIU6HcawITLnwQRF/nhGAcGXRRC0HAnooY6KqMZffglNozLSmTy3tw==
X-Received: by 2002:a54:4601:0:b0:389:4f7b:949d with SMTP id p1-20020a544601000000b003894f7b949dmr2828314oip.22.1681487522774;
        Fri, 14 Apr 2023 08:52:02 -0700 (PDT)
Received: from halaney-x13s (104-53-165-62.lightspeed.stlsmo.sbcglobal.net. [104.53.165.62])
        by smtp.gmail.com with ESMTPSA id bm26-20020a0568081a9a00b0038b734b335csm1800645oib.43.2023.04.14.08.52.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Apr 2023 08:52:02 -0700 (PDT)
Date:   Fri, 14 Apr 2023 10:51:59 -0500
From:   Andrew Halaney <ahalaney@redhat.com>
To:     Krishna Kurapati <quic_kriskura@quicinc.com>
Cc:     Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        quic_pkondeti@quicinc.com, quic_ppratap@quicinc.com,
        quic_wcheng@quicinc.com, quic_jackp@quicinc.com,
        quic_harshq@quicinc.com, quic_shazhuss@quicinc.com
Subject: Re: [PATCH v6 8/8] arm64: dts: qcom: sa8540-ride: Enable first port
 of tertiary usb controller
Message-ID: <20230414155159.zmhkeoxwhxe5czm5@halaney-x13s>
References: <20230405125759.4201-1-quic_kriskura@quicinc.com>
 <20230405125759.4201-9-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230405125759.4201-9-quic_kriskura@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 05, 2023 at 06:27:59PM +0530, Krishna Kurapati wrote:
> Enable first port of Quad port Tertiary USB controller for SA8540 Ride.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>

This is nitpicky, but I liked some of the description in the first[0]
version of this patch that I authored for you:

    From dcb27d07f079194ebd7efe1c9bec64da78beb290 Mon Sep 17 00:00:00 2001
    From: Andrew Halaney <ahalaney@redhat.com>
    Date: Thu, 19 Jan 2023 14:53:38 -0600
    Subject: [PATCH] arm64: dts: qcom: sa8540p-ride: Enable usb_2
    Content-type: text/plain

    There is now support for the multiport USB controller this uses
    so enable it.

    The board only has a single port hooked up (despite it being wired up to
    the multiport IP on the SoC). There's also a USB 2.0 mux hooked up,
    which by default on boot is selected to mux properly. Grab the gpio
    controlling that and ensure it stays in the right position so USB 2.0
    continues to be routed from the external port to the SoC.

    Signed-off-by: Andrew Halaney <ahalaney@redhat.com>

Specifically the bit helping explain what the mux, its default state,
etc are things I find explain some of the hardware/patch better. Personal
opinion of course but I'll highlight it since you dropped it out :)

[0] https://lore.kernel.org/linux-arm-msm/20230119220942.ja5gbo3t3fl63gpy@halaney-x13s/

Either way, thanks for taking the patch along and working on this.

Thanks,
Andrew

