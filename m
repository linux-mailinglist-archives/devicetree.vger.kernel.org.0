Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B3CCACAD8D
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2019 19:48:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730911AbfJCRqU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Oct 2019 13:46:20 -0400
Received: from mail-pf1-f172.google.com ([209.85.210.172]:46993 "EHLO
        mail-pf1-f172.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730530AbfJCRqU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Oct 2019 13:46:20 -0400
Received: by mail-pf1-f172.google.com with SMTP id q5so2184036pfg.13
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2019 10:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=YBqTO1SR8JZ4rSW8NROiJQC8y+FlKcm5wmclx7YsqJA=;
        b=zXh23Z7/bQMXb1njJl5nd10TBMyIcKR2f6rXFwRg7lRseFfvNdwk5hGEOeUVaFd6AE
         T04YhoYOJAfsK9QdRuija7o1DJFJpKusBRlgy6Puv1OJRPq8hBrCTL4vhDXSQPVWZaAr
         BEnZfDQlRVp7q4Ibb8SMcqypMkzM6YCeCGNOr0MYXvk7+IxbSwPJ7DkhPfaJ3JlMIBA+
         dzQ5cMFBlQ6H6S2TM1HRBDgs+WnT+7nUT7ao4Gfm+pgHXG7R9hGzcZ7bT59+ywHCnSFt
         YloS1Cr05MEyMlQnVdxLlouP7nHl9mitEblkfcbO9Ej4wJzDsMYd9yHDy0fSjWNu9ZVd
         eBVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=YBqTO1SR8JZ4rSW8NROiJQC8y+FlKcm5wmclx7YsqJA=;
        b=teFWqmo3KnHkprbka1HI03HHvMdut27NUBVZhbTI/JaII7M7j+7Fs5N7na2r9aoQLl
         E2XxzXmOCF7ayROsHQofjIQPMTQUXgyCmi4Fd86pyPSEPsKzXFRqQeJOB/vS0QbW0qnZ
         Tgny5o+U9V6lo4Pk9enZP3ts/so31WpDHoFv/M9aqPxMQVljTzd6NMFD+OGu+AzvZuHv
         sljqShC42Tu8c45hj1XGiWJm2q/AdydGgkjt9EC/+FJmmrD/EO5AbtTCyHHJmIIy6Xo+
         cNBX5iddvTb7CkRMD9y6esLglVjrrXvl2SvNc6vMDCF3n69a5caHAaFrH7LfEhrt8zX2
         oV5Q==
X-Gm-Message-State: APjAAAX8TVcOe3YS4aVNcPfbWPpIa43KcJHBkAKeB7v02R/yOQ6mJUlg
        YeIAbEtzJhuVG4N43ra745XEiA==
X-Google-Smtp-Source: APXvYqwGyyHM/joodBfrobBkDYq8xYqnEIe7owkvzFzx1uMOZNAZN9I8MRSWEPPfqOEb5FEBHtqCJA==
X-Received: by 2002:a17:90a:ae0d:: with SMTP id t13mr12067312pjq.60.1570124778487;
        Thu, 03 Oct 2019 10:46:18 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:a084:116f:9da0:2d6c])
        by smtp.gmail.com with ESMTPSA id e9sm3138664pgs.86.2019.10.03.10.46.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 03 Oct 2019 10:46:17 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson: g12a: add audio devices resets
In-Reply-To: <20190925093358.15476-1-jbrunet@baylibre.com>
References: <20190925093358.15476-1-jbrunet@baylibre.com>
Date:   Thu, 03 Oct 2019 10:46:17 -0700
Message-ID: <7hr23tvi1i.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> Provide the reset lines coming from the audio clock controller to
> the audio devices of the g12 family
>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>

Queued for v5.5 w/Neil's tag.

Thanks,

Kevin
