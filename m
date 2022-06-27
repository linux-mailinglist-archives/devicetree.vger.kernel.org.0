Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8337955CC8E
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:01:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236542AbiF0R2I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 13:28:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239656AbiF0R2E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 13:28:04 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31DB112E
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:28:04 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id a11-20020a17090acb8b00b001eca0041455so10389744pju.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PR4yxUcujYNnYRV2GNVH+W1vpd0NzRG7s3KeVlfvmcQ=;
        b=cV+Iyegp1Fzh+yF0bDpp/kM5xArP+DWhENeST/78PYVtBGtHqz8jA3YftkNbZkfkK2
         zHzQWvaC/U6XQssSv3t22g+HoQ3KNAw+nymyb5KqqXGAPXVYq4UxwGjWFdDTxzwIlARV
         uWEwjEdjJ2qlIS8mBUWAeEiq9ZUy8N62papVvah5z6Tw7qjZK4GzvwFRNiSKuLavN14L
         djwBGHTEnVey9JBpjBeZbf/Zr+wRNTzTynkr/541ZmajXjFc/BOQ01z0LPNZnQPqKdOP
         OsemDw5FYjh0/NEc2/pS9YrjRQeLIhtg46gcPCWjyEIc5U49kgg2Zkxr33twNVaw2ycv
         aIBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PR4yxUcujYNnYRV2GNVH+W1vpd0NzRG7s3KeVlfvmcQ=;
        b=vPmDS5UpvuDWQ0nWUkmsfhSEu5oOCtyo3kRErnyHw2AlfmlRGKkjiSAO6Z5WKI97pN
         QunkFwieklG/DNtT7CHH5R3AmtKpRQ7lN/HQvjVGOWrZ0WYvDJeXjlr5mdebNPee42DQ
         n7sYn45Xy5fIOyZdZ4V6Y1sXkReOvswIrG9WxkUBj96UdzcVBTOiG+UWT3ZWQpDxdJ1r
         8aYV2qoXWA/lL1gatXWRHmEA6bmjRAm0z5bFd8oOgLqSvNrqgwZ9RWiT/5vhlfLeXWud
         VfoH0CFo+m4UOt11etKce1hPpKV6yEA6fxD0LI0tALOpNodc2x/Rwb+GzNz7DcdQxw44
         p/Pg==
X-Gm-Message-State: AJIora9wkKbvhFpQ6/+86B0BzTkp8HK7aau6kVUL3FtUxjFdAJepmTJY
        86JntrzL4L7mNHZ6YqaTPUw=
X-Google-Smtp-Source: AGRyM1t62b0mArRg+5Dy7q+tNGLVXKVLOIFZHTSZKCpoYhKeUGEDOJpQb5RnP5DUx5t2bvm2ZQC8SQ==
X-Received: by 2002:a17:902:ec91:b0:16a:32fb:49c5 with SMTP id x17-20020a170902ec9100b0016a32fb49c5mr519224plg.157.1656350883646;
        Mon, 27 Jun 2022 10:28:03 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id l18-20020a17090a599200b001eee5416138sm1974082pji.52.2022.06.27.10.28.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 10:28:03 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V4 10/11] soc: bcm: bcm2835-power: Add support for BCM2711's RPiVid ASB
Date:   Mon, 27 Jun 2022 10:28:01 -0700
Message-Id: <20220627172801.2173421-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-11-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com> <20220625113619.15944-11-stefan.wahren@i2se.com>
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

On Sat, 25 Jun 2022 13:36:18 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> In BCM2711 the new RPiVid ASB took over V3D. The old ASB is still present
> with the ISP and H264 bits, and V3D is in the same place in the new ASB
> as the old one.
> 
> Use the fact that 'pm->rpivid_asb' is populated as a hint that we're on
> BCM2711.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/drivers/next, thanks!
--
Florian
