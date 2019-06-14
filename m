Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0EA4546851
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 21:49:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725973AbfFNTtt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 15:49:49 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:44603 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725942AbfFNTts (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 15:49:48 -0400
Received: by mail-wr1-f68.google.com with SMTP id r16so3693831wrl.11
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2019 12:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:subject:to:cc:message-id:in-reply-to:references
         :mime-version;
        bh=D2Jp4MrPZCXvvnJ+vcaU1kDqB/bC2o8rRr1g4mxoY8c=;
        b=N12KO4fGu5qQHf19CP2U9aa8h+TxvCB8th+0NnIABtZTumBIdeOBTCCYPAMvjeMlpx
         rUmLFzQq/sB+eKaxXjo0tOzEeX4xfqRvTRC+dPKMYwFvHEmEeK2p0ZHPhMgARjhgMJyH
         Af0XJ88/pGRsPL3A/hYUixk+fm/7il896RiCZTSBbqnTjDFdBIZswPRystF9POHPFkVQ
         KIo56+xt10OJefdYswvEhc3lhZ47C+Bb3jewhE6iMtzB8LIHv68o8N7obWbTuFPTX7kB
         YJQk6WihWvNOtuziFS9j6uwWEeU+MvKWgCvLLa6FKnXrCh/SJQqm56emkdQJNxg7jfHH
         7NSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:subject:to:cc:message-id:in-reply-to
         :references:mime-version;
        bh=D2Jp4MrPZCXvvnJ+vcaU1kDqB/bC2o8rRr1g4mxoY8c=;
        b=j80oo0To9QrfIQEM68zSnGVeQM3ONPiJxbp+/gWGU4TlvOtvQiMZ9+/f9+JTf4HSaf
         FbNVpeCR53ScjJaKSzeCaEyIhJ/YivV4f6cUIrEaShNuv7rzJu4LlNqlJyPzdVej0Lwp
         eDEQQiGGMFg2zcRk3TdUlLBHbhYqEGE2Peq6WC1Zs56SZJHnpCsw/RojCCZQbbdlzpQL
         B1iuhVzh4ttj8QEnCDcu07b1yPxS4GoPO4VAsdT3s+v0Q53MpyKN8TbxUTFHUPlaMots
         VGOuxoR/5jWRLmVvgxY7j+23cpf/5obZvh1AAxmIvT/IsnI6kcjYH4FoOG5MziVovh7w
         Wm1w==
X-Gm-Message-State: APjAAAXhOHVzacw04+G7EEu7AHDS/r4ovDAS0lXZKeglUoUOnju+ljg2
        pXXs4L5Sjzz/Y/JWR+PPBTc=
X-Google-Smtp-Source: APXvYqxm139gzKF9pSB8kIGGWvPhZLZYT0gquBj2ZyqNBxLbS1uj91g9GLI9/T8YtjOA7p+ua6yTHg==
X-Received: by 2002:a5d:5448:: with SMTP id w8mr32445240wrv.180.1560541786773;
        Fri, 14 Jun 2019 12:49:46 -0700 (PDT)
Received: from X555LD ([2a02:85f:51e:5d00:f1ab:2da6:d378:d0de])
        by smtp.gmail.com with ESMTPSA id o126sm8503912wmo.31.2019.06.14.12.49.44
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 14 Jun 2019 12:49:46 -0700 (PDT)
Date:   Fri, 14 Jun 2019 22:49:43 +0300
From:   "Leonidas P. Papadakos" <papadakospan@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii
 performance.
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
        Jose Abreu <jose.abreu@synopsys.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Message-Id: <1560541783.1367.3@gmail.com>
In-Reply-To: <4025583.lUYsg5j2zl@phil>
References: <20190607123731.8737-1-pgwipeout@gmail.com>
        <1559912295.22520.0@gmail.com>
        <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
        <4025583.lUYsg5j2zl@phil>
X-Mailer: geary/3.32.1
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> 
> same as with the other patch: I've lost track of what matters,
> so please resend the ones that matter with appropriate
> Tested-by, Reviewed-by tags by involved people.
> 
> Thanks
> Heiko
> 
> 

Understandable, really. haha!
The conversation is ongoing. I'll test this now that that loaded week 
has passed and see if we can reach something better than dropping tx 
offload. This might be it, if it works for more than one device


